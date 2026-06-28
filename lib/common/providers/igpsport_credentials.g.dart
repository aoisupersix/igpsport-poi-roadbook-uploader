// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'igpsport_credentials.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 保存済みの iGPSPORT 認証情報を保持するプロバイダ。
///
/// 初期値は起動時に [SecureStorageService] から読み込んだ値を
/// [IgpsportCredentialsNotifier.fromModel] で注入する。未登録の場合は null。

@ProviderFor(IgpsportCredentialsNotifier)
final igpsportCredentialsProvider = IgpsportCredentialsNotifierProvider._();

/// 保存済みの iGPSPORT 認証情報を保持するプロバイダ。
///
/// 初期値は起動時に [SecureStorageService] から読み込んだ値を
/// [IgpsportCredentialsNotifier.fromModel] で注入する。未登録の場合は null。
final class IgpsportCredentialsNotifierProvider
    extends
        $NotifierProvider<IgpsportCredentialsNotifier, IgpsportCredentials?> {
  /// 保存済みの iGPSPORT 認証情報を保持するプロバイダ。
  ///
  /// 初期値は起動時に [SecureStorageService] から読み込んだ値を
  /// [IgpsportCredentialsNotifier.fromModel] で注入する。未登録の場合は null。
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

/// 保存済みの iGPSPORT 認証情報を保持するプロバイダ。
///
/// 初期値は起動時に [SecureStorageService] から読み込んだ値を
/// [IgpsportCredentialsNotifier.fromModel] で注入する。未登録の場合は null。

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
