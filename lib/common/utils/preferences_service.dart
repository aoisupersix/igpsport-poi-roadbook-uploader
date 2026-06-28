import 'package:igpsport_poi_roadbook_uploader/i18n/strings.g.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Service for non-sensitive app preferences backed by [SharedPreferences].
class PreferencesService {
  factory PreferencesService() => _instance;

  PreferencesService._internal();

  static final PreferencesService _instance = PreferencesService._internal();

  /// Key under which the selected locale's language code is stored.
  static const String localeKey = 'locale';

  /// Returns the saved locale, or null when none is set (follow the device).
  Future<AppLocale?> getLocale() async {
    final prefs = await SharedPreferences.getInstance();
    final code = prefs.getString(localeKey);
    if (code == null) return null;
    return AppLocaleUtils.supportedLocalesRaw.contains(code)
        ? AppLocaleUtils.parse(code)
        : null;
  }

  /// Saves the selected [locale].
  Future<void> setLocale(AppLocale locale) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(localeKey, locale.languageCode);
  }

  /// Clears the saved locale so the app follows the device locale.
  Future<void> clearLocale() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(localeKey);
  }
}
