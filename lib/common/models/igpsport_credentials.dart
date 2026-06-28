import 'package:freezed_annotation/freezed_annotation.dart';

part 'igpsport_credentials.freezed.dart';
part 'igpsport_credentials.g.dart';

/// Credentials used to log in to iGPSPORT.
@freezed
abstract class IgpsportCredentials with _$IgpsportCredentials {
  const factory IgpsportCredentials({
    required String email,
    required String password,
  }) = _IgpsportCredentials;

  factory IgpsportCredentials.fromJson(Map<String, dynamic> json) =>
      _$IgpsportCredentialsFromJson(json);
}
