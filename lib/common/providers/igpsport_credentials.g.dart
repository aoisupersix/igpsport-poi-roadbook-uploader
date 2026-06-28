// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'igpsport_credentials.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider that holds the saved iGPSPORT credentials.
///
/// The initial value is injected via [IgpsportCredentialsNotifier.fromModel]
/// with the value loaded from [SecureStorageService] at startup. It is null
/// when no credentials are registered.

@ProviderFor(IgpsportCredentialsNotifier)
final igpsportCredentialsProvider = IgpsportCredentialsNotifierProvider._();

/// Provider that holds the saved iGPSPORT credentials.
///
/// The initial value is injected via [IgpsportCredentialsNotifier.fromModel]
/// with the value loaded from [SecureStorageService] at startup. It is null
/// when no credentials are registered.
final class IgpsportCredentialsNotifierProvider
    extends
        $NotifierProvider<IgpsportCredentialsNotifier, IgpsportCredentials?> {
  /// Provider that holds the saved iGPSPORT credentials.
  ///
  /// The initial value is injected via [IgpsportCredentialsNotifier.fromModel]
  /// with the value loaded from [SecureStorageService] at startup. It is null
  /// when no credentials are registered.
  IgpsportCredentialsNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'igpsportCredentialsProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$igpsportCredentialsNotifierHash();

  @$internal
  @override
  IgpsportCredentialsNotifier create() => IgpsportCredentialsNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(IgpsportCredentials? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<IgpsportCredentials?>(value),
    );
  }
}

String _$igpsportCredentialsNotifierHash() =>
    r'ff8223486661daf0daaef75e99f77d78aab5038c';

/// Provider that holds the saved iGPSPORT credentials.
///
/// The initial value is injected via [IgpsportCredentialsNotifier.fromModel]
/// with the value loaded from [SecureStorageService] at startup. It is null
/// when no credentials are registered.

abstract class _$IgpsportCredentialsNotifier
    extends $Notifier<IgpsportCredentials?> {
  IgpsportCredentials? build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<IgpsportCredentials?, IgpsportCredentials?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<IgpsportCredentials?, IgpsportCredentials?>,
              IgpsportCredentials?,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
