import 'package:igpsport_poi_roadbook_uploader/common/models/igpsport_poi_type.dart';
import 'package:igpsport_poi_roadbook_uploader/common/models/poi_type_mapping.dart';
import 'package:igpsport_poi_roadbook_uploader/common/utils/poi_type_mapping_defaults.dart';
import 'package:igpsport_poi_roadbook_uploader/common/utils/preferences_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'poi_type_mapping_controller.g.dart';

/// Holds the user-configurable GPX to iGPSPORT POI type mapping.
///
/// The initial value is injected at startup via
/// [PoiTypeMappingController.fromModel] with the value loaded from
/// [PreferencesService], defaulting to [defaultPoiTypeMapping].
@Riverpod(keepAlive: true)
class PoiTypeMappingController extends _$PoiTypeMappingController {
  PoiTypeMappingController() : _initial = defaultPoiTypeMapping;

  /// Creates the controller with [mapping] as the initial value.
  PoiTypeMappingController.fromModel(PoiTypeMapping mapping)
    : _initial = mapping;

  final PoiTypeMapping _initial;

  @override
  PoiTypeMapping build() => _initial;

  Future<void> _update(PoiTypeMapping mapping) async {
    state = mapping;
    await PreferencesService().setPoiTypeMapping(mapping);
  }

  /// Appends [entry] to the mapping and persists it.
  Future<void> addEntry(PoiTypeMappingEntry entry) =>
      _update(state.copyWith(entries: [...state.entries, entry]));

  /// Replaces the entry at [index] with [entry] and persists it.
  Future<void> updateEntry(int index, PoiTypeMappingEntry entry) {
    final entries = [...state.entries];
    entries[index] = entry;
    return _update(state.copyWith(entries: entries));
  }

  /// Removes the entry at [index] and persists the change.
  Future<void> removeEntry(int index) {
    final entries = [...state.entries]..removeAt(index);
    return _update(state.copyWith(entries: entries));
  }

  /// Sets the [type] used for GPX types not covered by any entry.
  Future<void> setDefaultType(IgpsportPoiType type) =>
      _update(state.copyWith(defaultType: type));

  /// Restores the built-in default mapping and clears the saved value.
  Future<void> resetToDefault() async {
    state = defaultPoiTypeMapping;
    await PreferencesService().clearPoiTypeMapping();
  }
}
