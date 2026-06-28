// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locale_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Holds the user-selected [AppLocale], or null to follow the device locale.
///
/// The initial value is injected at startup via [LocaleController.fromModel]
/// with the value loaded from [PreferencesService].

@ProviderFor(LocaleController)
final localeControllerProvider = LocaleControllerProvider._();

/// Holds the user-selected [AppLocale], or null to follow the device locale.
///
/// The initial value is injected at startup via [LocaleController.fromModel]
/// with the value loaded from [PreferencesService].
final class LocaleControllerProvider
    extends $NotifierProvider<LocaleController, AppLocale?> {
  /// Holds the user-selected [AppLocale], or null to follow the device locale.
  ///
  /// The initial value is injected at startup via [LocaleController.fromModel]
  /// with the value loaded from [PreferencesService].
  LocaleControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'localeControllerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$localeControllerHash();

  @$internal
  @override
  LocaleController create() => LocaleController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppLocale? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppLocale?>(value),
    );
  }
}

String _$localeControllerHash() => r'b1fc6477f7bbc5875169caa364c3391b8778bd54';

/// Holds the user-selected [AppLocale], or null to follow the device locale.
///
/// The initial value is injected at startup via [LocaleController.fromModel]
/// with the value loaded from [PreferencesService].

abstract class _$LocaleController extends $Notifier<AppLocale?> {
  AppLocale? build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AppLocale?, AppLocale?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AppLocale?, AppLocale?>,
              AppLocale?,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
