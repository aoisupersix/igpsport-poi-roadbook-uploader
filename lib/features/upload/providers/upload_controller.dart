import 'package:igpsport_poi_roadbook_uploader/common/providers/igpsport_credentials.dart';
import 'package:igpsport_poi_roadbook_uploader/common/utils/logger.dart';
import 'package:igpsport_poi_roadbook_uploader/features/upload/models/roadbook_privacy.dart';
import 'package:igpsport_poi_roadbook_uploader/features/upload/models/upload_log_entry.dart';
import 'package:igpsport_poi_roadbook_uploader/features/upload/models/upload_state.dart';
import 'package:igpsport_poi_roadbook_uploader/features/upload/utils/gpx_poi_extractor.dart';
import 'package:igpsport_poi_roadbook_uploader/features/upload/utils/igpsport_upload_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'upload_controller.g.dart';

/// Drives a GPX roadbook upload to iGPSPORT and exposes progress as logs.
@riverpod
class UploadController extends _$UploadController {
  @override
  UploadState build() => const UploadState();

  /// Uploads [gpxBytes] as a roadbook named [title] with the given [privacy],
  /// then registers POIs extracted from the GPX. Progress is appended to the
  /// state as log entries.
  Future<void> upload({
    required List<int> gpxBytes,
    required String filename,
    required String title,
    required RoadbookPrivacy privacy,
  }) async {
    if (state.isUploading) return;

    _reset();

    final credentials = ref.read(igpsportCredentialsProvider);
    if (credentials == null) {
      _log(UploadLogLevel.error, 'No iGPSPORT account is registered.');
      state = state.copyWith(succeeded: false);
      return;
    }

    state = state.copyWith(isUploading: true);

    final client = IgpsportUploadClient(
      username: credentials.email,
      password: credentials.password,
      onLog: (message) => _log(UploadLogLevel.info, message),
    );

    try {
      final pois = extractPoisFromGpxBytes(gpxBytes);
      _log(UploadLogLevel.info, 'Extracted ${pois.length} POI(s) from GPX.');

      // The upload attempt seeds the session cookies and logs in on demand,
      // mirroring the working reference (a cold /Auth/Login returns 403).
      _log(UploadLogLevel.info, 'Uploading "$title" ($filename)...');
      await client.uploadRoute(title, filename, gpxBytes);
      _log(UploadLogLevel.success, 'Roadbook uploaded.');

      _log(UploadLogLevel.info, 'Resolving roadbook ID...');
      final roadbookId = await client.resolveRoadbookId(title);
      _log(UploadLogLevel.info, 'Roadbook ID: $roadbookId');

      _log(UploadLogLevel.info, 'Authenticating service API...');
      await client.serviceLogin();

      _log(
        UploadLogLevel.info,
        'Setting visibility to ${privacy.name}...',
      );
      await client.setPrivacy(roadbookId, title, privacy);
      _log(UploadLogLevel.success, 'Visibility set to ${privacy.name}.');

      if (pois.isNotEmpty) {
        _log(UploadLogLevel.info, 'Registering ${pois.length} POI(s)...');
        await client.setAuxiliaryPoints(roadbookId, pois);
        _log(UploadLogLevel.success, 'POIs registered.');
      }

      _log(UploadLogLevel.success, 'Done.');
      state = state.copyWith(isUploading: false, succeeded: true);
    } on Object catch (error) {
      _log(UploadLogLevel.error, '$error');
      state = state.copyWith(isUploading: false, succeeded: false);
    } finally {
      client.close();
    }
  }

  /// Clears logs and result to start a fresh run.
  void clear() => state = const UploadState();

  void _reset() => state = const UploadState();

  void _log(UploadLogLevel level, String message) {
    // Mirror every on-screen log line to the debug console.
    switch (level) {
      case UploadLogLevel.error:
        logger.e(message);
      case UploadLogLevel.success:
        logger.i(message);
      case UploadLogLevel.info:
        logger.d(message);
    }
    state = state.copyWith(
      logs: [
        ...state.logs,
        UploadLogEntry(level: level, message: message, time: DateTime.now()),
      ],
    );
  }
}
