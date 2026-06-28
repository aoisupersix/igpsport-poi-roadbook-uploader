import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:igpsport_poi_roadbook_uploader/common/models/igpsport_credentials.dart';

/// Service that securely stores and retrieves sensitive data such as
/// credentials.
///
/// On iOS / macOS it uses the Keychain, and on Android the Keystore-backed
/// EncryptedSharedPreferences, to store data encrypted.
class SecureStorageService {
  factory SecureStorageService() => _instance;

  SecureStorageService._internal();

  static final SecureStorageService _instance =
      SecureStorageService._internal();

  static const FlutterSecureStorage _storage = FlutterSecureStorage(
    aOptions: AndroidOptions(encryptedSharedPreferences: true),
  );

  /// Key under which the iGPSPORT credentials are stored.
  static const String credentialsKey = 'igpsport_credentials';

  /// Returns the saved iGPSPORT credentials, or null if none are stored.
  Future<IgpsportCredentials?> getCredentials() async {
    final json = await _storage.read(key: credentialsKey);
    if (json == null) {
      return null;
    }

    final decoded = jsonDecode(json) as Map<String, dynamic>;
    return IgpsportCredentials.fromJson(decoded);
  }

  /// Saves the iGPSPORT credentials.
  Future<void> setCredentials(IgpsportCredentials credentials) async {
    final json = jsonEncode(credentials.toJson());
    await _storage.write(key: credentialsKey, value: json);
  }

  /// Deletes the saved iGPSPORT credentials.
  Future<void> clearCredentials() async {
    await _storage.delete(key: credentialsKey);
  }
}
