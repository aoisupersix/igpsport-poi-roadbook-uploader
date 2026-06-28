import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:igpsport_poi_roadbook_uploader/common/models/igpsport_poi_type.dart';
import 'package:igpsport_poi_roadbook_uploader/common/models/poi_type_mapping.dart';
import 'package:igpsport_poi_roadbook_uploader/common/utils/poi_type_mapping_defaults.dart';
import 'package:igpsport_poi_roadbook_uploader/features/upload/utils/gpx_poi_extractor.dart';

const _gpx = '''
<?xml version="1.0" encoding="UTF-8"?>
<gpx version="1.1" xmlns="http://www.topografix.com/GPX/1/1">
  <wpt lat="35.0" lon="139.0"><name>Summit</name><type>Summit</type></wpt>
  <wpt lat="35.1" lon="139.1"><name>Water</name><type>Water</type></wpt>
  <wpt lat="35.0" lon="139.0"><name>Summit</name><type>Summit</type></wpt>
  <trk><trkseg><trkpt lat="35.2" lon="139.2"/></trkseg></trk>
</gpx>
''';

void main() {
  final resolver = PoiTypeResolver(defaultPoiTypeMapping);

  group('extractPoisFromGpxBytes', () {
    test('extracts named waypoints, maps types, and de-duplicates', () {
      final pois = extractPoisFromGpxBytes(utf8.encode(_gpx), resolver);

      // The unnamed trkpt is ignored and the duplicate Summit is removed.
      expect(pois, hasLength(2));
      expect(pois[0].name, 'Summit');
      expect(pois[0].poiType, IgpsportPoiType.hcLevelClimbing);
      expect(pois[1].name, 'Water');
      expect(pois[1].poiType, IgpsportPoiType.supplyPoint);
    });

    test('returns empty list for invalid GPX', () {
      expect(
        extractPoisFromGpxBytes(utf8.encode('not xml'), resolver),
        isEmpty,
      );
    });
  });

  group('PoiTypeResolver', () {
    test('defaults unknown waypoint types to the mapping default', () {
      expect(resolver.resolve('something-unknown'), IgpsportPoiType.viaPoint);
    });

    test('matches GPX types case- and separator-insensitively', () {
      expect(
        resolver.resolve('aid-station'),
        IgpsportPoiType.medicalAidStation,
      );
    });

    test('uses the configured default type for unmatched types', () {
      final custom = PoiTypeResolver(
        defaultPoiTypeMapping.copyWith(defaultType: IgpsportPoiType.shop),
      );
      expect(custom.resolve('totally-unknown'), IgpsportPoiType.shop);
    });
  });

  group('PoiTypeMapping JSON', () {
    test('survives a jsonEncode/decode round trip', () {
      final mapping = defaultPoiTypeMapping.copyWith(
        defaultType: IgpsportPoiType.shop,
        entries: const [
          PoiTypeMappingEntry(
            gpxType: 'CUSTOM',
            igpsportType: IgpsportPoiType.tunnel,
          ),
        ],
      );

      final encoded = jsonEncode(mapping.toJson());
      final decoded = PoiTypeMapping.fromJson(
        jsonDecode(encoded) as Map<String, dynamic>,
      );

      expect(decoded, mapping);
    });
  });
}
