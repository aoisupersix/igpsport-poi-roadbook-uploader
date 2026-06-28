// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poi_type_mapping.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PoiTypeMappingEntry _$PoiTypeMappingEntryFromJson(Map<String, dynamic> json) =>
    _PoiTypeMappingEntry(
      gpxType: json['gpxType'] as String,
      igpsportType: const IgpsportPoiTypeConverter().fromJson(
        json['igpsportType'] as String,
      ),
    );

Map<String, dynamic> _$PoiTypeMappingEntryToJson(
  _PoiTypeMappingEntry instance,
) => <String, dynamic>{
  'gpxType': instance.gpxType,
  'igpsportType': const IgpsportPoiTypeConverter().toJson(
    instance.igpsportType,
  ),
};

_PoiTypeMapping _$PoiTypeMappingFromJson(Map<String, dynamic> json) =>
    _PoiTypeMapping(
      entries: (json['entries'] as List<dynamic>)
          .map((e) => PoiTypeMappingEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
      defaultType: const IgpsportPoiTypeConverter().fromJson(
        json['defaultType'] as String,
      ),
    );

Map<String, dynamic> _$PoiTypeMappingToJson(
  _PoiTypeMapping instance,
) => <String, dynamic>{
  'entries': instance.entries,
  'defaultType': const IgpsportPoiTypeConverter().toJson(instance.defaultType),
};
