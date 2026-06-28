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

  /// Parses an [IgpsportPoiType] from its API [value], or null when unknown.
  static IgpsportPoiType? fromValue(String value) {
    for (final type in IgpsportPoiType.values) {
      if (type.value == value) return type;
    }
    return null;
  }
}
