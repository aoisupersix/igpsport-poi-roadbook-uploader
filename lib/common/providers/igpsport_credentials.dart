import 'package:igpsport_poi_roadbook_uploader/common/models/igpsport_credentials.dart';
import 'package:igpsport_poi_roadbook_uploader/common/utils/secure_storage_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'igpsport_credentials.g.dart';

/// Provider that holds the saved iGPSPORT credentials.
///
/// The initial value is injected via [IgpsportCredentialsNotifier.fromModel]
/// with the value loaded from [SecureStorageService] at startup. It is null
/// when no credentials are registered.
@Riverpod(keepAlive: true)
class IgpsportCredentialsNotifier extends _$IgpsportCredentialsNotifier {
  IgpsportCredentialsNotifier() : _initialCredentials = null;

  /// Creates the provider with [credentials] as the initial value.
  IgpsportCredentialsNotifier.fromModel(IgpsportCredentials? credentials)
      : _initialCredentials = credentials;

  final IgpsportCredentials? _initialCredentials;

  @override
  IgpsportCredentials? build() => _initialCredentials;

  /// Saves the credentials to secure storage and updates the state.
  Future<void> save(IgpsportCredentials credentials) async {
    await SecureStorageService().setCredentials(credentials);
    state = credentials;
  }

  /// Deletes the saved credentials and resets the state to unregistered.
  Future<void> clear() async {
    await SecureStorageService().clearCredentials();
    state = null;
  }
}
