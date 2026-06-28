import 'dart:convert';

import 'package:igpsport_poi_roadbook_uploader/common/models/igpsport_poi_type.dart';
import 'package:igpsport_poi_roadbook_uploader/common/models/poi_type_mapping.dart';
import 'package:igpsport_poi_roadbook_uploader/features/upload/models/igpsport_poi.dart';
import 'package:xml/xml.dart';

final _nonAlnum = RegExp('[^A-Z0-9]');

String _normalizeTypeKey(String value) =>
    value.toUpperCase().replaceAll(_nonAlnum, '');

/// Resolves GPX waypoint types to iGPSPORT POI types using a [PoiTypeMapping].
///
/// GPX type keys are matched case-insensitively, ignoring non-alphanumeric
/// characters. Types not covered by an entry fall back to
/// [PoiTypeMapping.defaultType].
class PoiTypeResolver {
  PoiTypeResolver(PoiTypeMapping mapping)
    : _defaultType = mapping.defaultType,
      _lookup = {
        for (final entry in mapping.entries)
          _normalizeTypeKey(entry.gpxType): entry.igpsportType,
      };

  final Map<String, IgpsportPoiType> _lookup;
  final IgpsportPoiType _defaultType;

  /// Returns the iGPSPORT type for [gpxType], or the default when unmatched.
  IgpsportPoiType resolve(String? gpxType) =>
      _lookup[_normalizeTypeKey(gpxType ?? '')] ?? _defaultType;
}

/// Extracts POI candidates from GPX bytes.
///
/// Reads `<wpt>` elements (with optional `<type>`) plus any named `<rtept>` /
/// `<trkpt>` elements, de-duplicating by rounded coordinate and name. GPX types
/// are mapped to iGPSPORT types via [resolver]. Returns an empty list when the
/// GPX cannot be parsed.
List<PoiCandidate> extractPoisFromGpxBytes(
  List<int> gpxBytes,
  PoiTypeResolver resolver,
) {
  final XmlDocument doc;
  try {
    doc = XmlDocument.parse(utf8.decode(gpxBytes, allowMalformed: true));
  } on XmlException {
    return [];
  }

  final pois = <PoiCandidate>[];
  final seen = <String>{};

  void addCandidate(
    String? name,
    double? latitude,
    double? longitude, {
    String? gpxType,
  }) {
    if (latitude == null || longitude == null) return;
    var poiName = (name ?? 'POI').trim();
    if (poiName.isEmpty) poiName = 'POI';
    final key =
        '${(latitude * 1000000).round()},'
        '${(longitude * 1000000).round()},$poiName';
    if (!seen.add(key)) return;
    final clipped = poiName.length > 64 ? poiName.substring(0, 64) : poiName;
    pois.add(
      PoiCandidate(
        name: clipped,
        latitude: latitude,
        longitude: longitude,
        poiType: resolver.resolve(gpxType),
        nameOrigin: clipped,
      ),
    );
  }

  double? attrDouble(XmlElement el, String name) =>
      double.tryParse(el.getAttribute(name) ?? '');

  String? childText(XmlElement el, String name) {
    final text = el.getElement(name)?.innerText.trim();
    return (text == null || text.isEmpty) ? null : text;
  }

  for (final wpt in doc.findAllElements('wpt')) {
    addCandidate(
      childText(wpt, 'name'),
      attrDouble(wpt, 'lat'),
      attrDouble(wpt, 'lon'),
      gpxType: childText(wpt, 'type'),
    );
  }
  for (final rtept in doc.findAllElements('rtept')) {
    final name = childText(rtept, 'name');
    if (name != null) {
      addCandidate(name, attrDouble(rtept, 'lat'), attrDouble(rtept, 'lon'));
    }
  }
  for (final trkpt in doc.findAllElements('trkpt')) {
    final name = childText(trkpt, 'name');
    if (name != null) {
      addCandidate(name, attrDouble(trkpt, 'lat'), attrDouble(trkpt, 'lon'));
    }
  }

  return pois;
}
