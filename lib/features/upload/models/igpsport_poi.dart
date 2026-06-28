import 'package:freezed_annotation/freezed_annotation.dart';

part 'igpsport_poi.freezed.dart';

/// iGPSPORT auxiliary point types used by the editRoutesAuxiliaryPoint API.
enum IgpsportPoiType {
  intersection('Intersection'),
  steepDescentAhead('SteepDescentAhead'),
  sharpBend('SharpBend'),
  dangerousArea('DangerousArea'),
  valley('Valley'),
  tunnel('Tunnel'),
  internetCelebrityClockInPoint('InternetCelebrityClockInPoint'),
  observationDeck('ObservationDeck'),
  rallyPoint('RallyPoint'),
  shop('Shop'),
  equipment('Equipment'),
  medicalAidStation('MedicalAidStation'),
  servicePoint('ServicePoint'),
  waterCloset('WaterCloset'),
  refuseCollectionArea('RefuseCollectionArea'),
  supplyPoint('SupplyPoint'),
  fourLevelClimbing('FourLevelClimbing'),
  threeLevelClimbing('ThreeLevelClimbing'),
  twoLevelClimbing('TwoLevelClimbing'),
  oneLevelClimbing('OneLevelClimbing'),
  hcLevelClimbing('HCLevelClimbing'),
  sprintPoint('SprintPoint'),
  viaPoint('ViaPoint');

  const IgpsportPoiType(this.value);

  /// Value sent to the iGPSPORT API.
  final String value;
}

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
