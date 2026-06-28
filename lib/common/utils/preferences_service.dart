import 'dart:convert';

import 'package:igpsport_poi_roadbook_uploader/common/models/poi_type_mapping.dart';
import 'package:igpsport_poi_roadbook_uploader/i18n/strings.g.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Service for non-sensitive app preferences backed by [SharedPreferences].
class PreferencesService {
  factory PreferencesService() => _instance;

  PreferencesService._internal();

  static final PreferencesService _instance = PreferencesService._internal();

  /// Key under which the selected locale's language code is stored.
  static const String localeKey = 'locale';

  /// Key under which the GPX to iGPSPORT POI type mapping is stored as JSON.
  static const String poiTypeMappingKey = 'poi_type_mapping';

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

  /// Returns the saved POI type mapping, or null when none is set (use default).
  Future<PoiTypeMapping?> getPoiTypeMapping() async {
    final prefs = await SharedPreferences.getInstance();
    final raw = prefs.getString(poiTypeMappingKey);
    if (raw == null) return null;
    try {
      final json = jsonDecode(raw) as Map<String, dynamic>;
      return PoiTypeMapping.fromJson(json);
    } on Object {
      return null;
    }
  }

  /// Saves the POI type [mapping].
  Future<void> setPoiTypeMapping(PoiTypeMapping mapping) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(poiTypeMappingKey, jsonEncode(mapping.toJson()));
  }

  /// Clears the saved mapping so the app falls back to the default.
  Future<void> clearPoiTypeMapping() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(poiTypeMappingKey);
  }
}
