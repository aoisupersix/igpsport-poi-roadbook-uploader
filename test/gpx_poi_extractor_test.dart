import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:igpsport_poi_roadbook_uploader/features/upload/models/igpsport_poi.dart';
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
  group('extractPoisFromGpxBytes', () {
    test('extracts named waypoints, maps types, and de-duplicates', () {
      final pois = extractPoisFromGpxBytes(utf8.encode(_gpx));

      // The unnamed trkpt is ignored and the duplicate Summit is removed.
      expect(pois, hasLength(2));
      expect(pois[0].name, 'Summit');
      expect(pois[0].poiType, IgpsportPoiType.hcLevelClimbing);
      expect(pois[1].name, 'Water');
      expect(pois[1].poiType, IgpsportPoiType.supplyPoint);
    });

    test('returns empty list for invalid GPX', () {
      expect(extractPoisFromGpxBytes(utf8.encode('not xml')), isEmpty);
    });

    test('defaults unknown waypoint types to ViaPoint', () {
      expect(mapIgpsportPoiType('something-unknown'), IgpsportPoiType.viaPoint);
    });
  });
}
