// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poi_type_mapping_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Holds the user-configurable GPX to iGPSPORT POI type mapping.
///
/// The initial value is injected at startup via
/// [PoiTypeMappingController.fromModel] with the value loaded from
/// [PreferencesService], defaulting to [defaultPoiTypeMapping].

@ProviderFor(PoiTypeMappingController)
final poiTypeMappingControllerProvider = PoiTypeMappingControllerProvider._();

/// Holds the user-configurable GPX to iGPSPORT POI type mapping.
///
/// The initial value is injected at startup via
/// [PoiTypeMappingController.fromModel] with the value loaded from
/// [PreferencesService], defaulting to [defaultPoiTypeMapping].
final class PoiTypeMappingControllerProvider
    extends $NotifierProvider<PoiTypeMappingController, PoiTypeMapping> {
  /// Holds the user-configurable GPX to iGPSPORT POI type mapping.
  ///
  /// The initial value is injected at startup via
  /// [PoiTypeMappingController.fromModel] with the value loaded from
  /// [PreferencesService], defaulting to [defaultPoiTypeMapping].
  PoiTypeMappingControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'poiTypeMappingControllerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$poiTypeMappingControllerHash();

  @$internal
  @override
  PoiTypeMappingController create() => PoiTypeMappingController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PoiTypeMapping value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PoiTypeMapping>(value),
    );
  }
}

String _$poiTypeMappingControllerHash() =>
    r'2fe38579a60270bea33c83430e143ee0cc27e5b0';

/// Holds the user-configurable GPX to iGPSPORT POI type mapping.
///
/// The initial value is injected at startup via
/// [PoiTypeMappingController.fromModel] with the value loaded from
/// [PreferencesService], defaulting to [defaultPoiTypeMapping].

abstract class _$PoiTypeMappingController extends $Notifier<PoiTypeMapping> {
  PoiTypeMapping build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<PoiTypeMapping, PoiTypeMapping>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<PoiTypeMapping, PoiTypeMapping>,
              PoiTypeMapping,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
