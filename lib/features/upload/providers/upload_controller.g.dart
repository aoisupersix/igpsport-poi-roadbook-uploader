// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Drives a GPX roadbook upload to iGPSPORT and exposes progress as logs.

@ProviderFor(UploadController)
final uploadControllerProvider = UploadControllerProvider._();

/// Drives a GPX roadbook upload to iGPSPORT and exposes progress as logs.
final class UploadControllerProvider
    extends $NotifierProvider<UploadController, UploadState> {
  /// Drives a GPX roadbook upload to iGPSPORT and exposes progress as logs.
  UploadControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'uploadControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$uploadControllerHash();

  @$internal
  @override
  UploadController create() => UploadController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UploadState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UploadState>(value),
    );
  }
}

String _$uploadControllerHash() => r'e8382c98cac0c5f451127b43e48d558190d2cccb';

/// Drives a GPX roadbook upload to iGPSPORT and exposes progress as logs.

abstract class _$UploadController extends $Notifier<UploadState> {
  UploadState build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<UploadState, UploadState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<UploadState, UploadState>,
              UploadState,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
