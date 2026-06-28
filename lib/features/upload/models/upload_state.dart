import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:igpsport_poi_roadbook_uploader/features/upload/models/upload_log_entry.dart';

part 'upload_state.freezed.dart';

/// State of the roadbook upload screen.
@freezed
abstract class UploadState with _$UploadState {
  const factory UploadState({
    @Default(false) bool isUploading,
    @Default(<UploadLogEntry>[]) List<UploadLogEntry> logs,
    /// Whether the last run finished successfully. Null while idle or running.
    bool? succeeded,
  }) = _UploadState;
}
