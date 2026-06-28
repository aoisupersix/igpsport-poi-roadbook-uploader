import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_log_entry.freezed.dart';

/// Severity of an [UploadLogEntry].
enum UploadLogLevel { info, success, error }

/// A single log line shown on screen while uploading.
@freezed
abstract class UploadLogEntry with _$UploadLogEntry {
  const factory UploadLogEntry({
    required UploadLogLevel level,
    required String message,
    required DateTime time,
  }) = _UploadLogEntry;
}
