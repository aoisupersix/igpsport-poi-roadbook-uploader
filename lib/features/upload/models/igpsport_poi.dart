import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:igpsport_poi_roadbook_uploader/common/models/igpsport_poi_type.dart';

part 'igpsport_poi.freezed.dart';

/// A point of interest extracted from a GPX file, ready to be sent to iGPSPORT.
@freezed
abstract class PoiCandidate with _$PoiCandidate {
  const factory PoiCandidate({
    required String name,
    required double latitude,
    required double longitude,
    required IgpsportPoiType poiType,
    required String nameOrigin,
  }) = _PoiCandidate;
}
