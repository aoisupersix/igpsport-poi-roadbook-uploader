import 'package:igpsport_poi_roadbook_uploader/common/utils/preferences_service.dart';
import 'package:igpsport_poi_roadbook_uploader/i18n/strings.g.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'locale_controller.g.dart';

/// Holds the user-selected [AppLocale], or null to follow the device locale.
///
/// The initial value is injected at startup via [LocaleController.fromModel]
/// with the value loaded from [PreferencesService].
@Riverpod(keepAlive: true)
class LocaleController extends _$LocaleController {
  LocaleController() : _initialLocale = null;

  /// Creates the controller with [locale] as the initial value.
  LocaleController.fromModel(AppLocale? locale) : _initialLocale = locale;

  final AppLocale? _initialLocale;

  @override
  AppLocale? build() => _initialLocale;

  /// Applies and persists [locale]. Passing null follows the device locale.
  Future<void> setLocale(AppLocale? locale) async {
    state = locale;
    if (locale == null) {
      await LocaleSettings.useDeviceLocale();
      await PreferencesService().clearLocale();
    } else {
      await LocaleSettings.setLocale(locale);
      await PreferencesService().setLocale(locale);
    }
  }
}
