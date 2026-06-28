import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:igpsport_poi_roadbook_uploader/common/models/igpsport_poi_type.dart';

part 'poi_type_mapping.freezed.dart';
part 'poi_type_mapping.g.dart';

/// Serializes [IgpsportPoiType] using its stable API value string.
class IgpsportPoiTypeConverter
    implements JsonConverter<IgpsportPoiType, String> {
  const IgpsportPoiTypeConverter();

  @override
  IgpsportPoiType fromJson(String json) =>
      IgpsportPoiType.fromValue(json) ?? IgpsportPoiType.viaPoint;

  @override
  String toJson(IgpsportPoiType object) => object.value;
}

/// A single GPX-type to iGPSPORT-type association.
@freezed
abstract class PoiTypeMappingEntry with _$PoiTypeMappingEntry {
  const factory PoiTypeMappingEntry({
    required String gpxType,
    @IgpsportPoiTypeConverter() required IgpsportPoiType igpsportType,
  }) = _PoiTypeMappingEntry;

  factory PoiTypeMappingEntry.fromJson(Map<String, dynamic> json) =>
      _$PoiTypeMappingEntryFromJson(json);
}

/// The user-configurable GPX to iGPSPORT POI type mapping.
///
/// [entries] holds any number of explicit associations; [defaultType] is used
/// for GPX types not covered by an entry.
@freezed
abstract class PoiTypeMapping with _$PoiTypeMapping {
  const factory PoiTypeMapping({
    required List<PoiTypeMappingEntry> entries,
    @IgpsportPoiTypeConverter() required IgpsportPoiType defaultType,
  }) = _PoiTypeMapping;

  factory PoiTypeMapping.fromJson(Map<String, dynamic> json) =>
      _$PoiTypeMappingFromJson(json);
}
