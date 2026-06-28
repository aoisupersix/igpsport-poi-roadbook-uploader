import 'package:igpsport_poi_roadbook_uploader/common/models/igpsport_poi_type.dart';
import 'package:igpsport_poi_roadbook_uploader/common/models/poi_type_mapping.dart';

/// The built-in GPX (Garmin) to iGPSPORT POI type mapping used as the initial
/// value until the user customizes it. Unmatched GPX types fall back to
/// [IgpsportPoiType.viaPoint].
const defaultPoiTypeMapping = PoiTypeMapping(
  defaultType: IgpsportPoiType.viaPoint,
  entries: [
    PoiTypeMappingEntry(
      gpxType: 'GENERAL DISTANCE',
      igpsportType: IgpsportPoiType.viaPoint,
    ),
    PoiTypeMappingEntry(
      gpxType: 'GENERIC',
      igpsportType: IgpsportPoiType.viaPoint,
    ),
    PoiTypeMappingEntry(
      gpxType: 'MILE MARKER',
      igpsportType: IgpsportPoiType.viaPoint,
    ),
    PoiTypeMappingEntry(
      gpxType: 'INFO',
      igpsportType: IgpsportPoiType.viaPoint,
    ),
    PoiTypeMappingEntry(
      gpxType: 'SERVICE',
      igpsportType: IgpsportPoiType.servicePoint,
    ),
    PoiTypeMappingEntry(
      gpxType: 'AID STATION',
      igpsportType: IgpsportPoiType.medicalAidStation,
    ),
    PoiTypeMappingEntry(
      gpxType: 'FIRST AID',
      igpsportType: IgpsportPoiType.medicalAidStation,
    ),
    PoiTypeMappingEntry(
      gpxType: 'FOOD',
      igpsportType: IgpsportPoiType.supplyPoint,
    ),
    PoiTypeMappingEntry(
      gpxType: 'WATER',
      igpsportType: IgpsportPoiType.supplyPoint,
    ),
    PoiTypeMappingEntry(
      gpxType: 'ENERGY GEL',
      igpsportType: IgpsportPoiType.supplyPoint,
    ),
    PoiTypeMappingEntry(
      gpxType: 'SPORTS DRINK',
      igpsportType: IgpsportPoiType.supplyPoint,
    ),
    PoiTypeMappingEntry(
      gpxType: 'SPRINT',
      igpsportType: IgpsportPoiType.sprintPoint,
    ),
    PoiTypeMappingEntry(
      gpxType: 'HORS CATEGORY',
      igpsportType: IgpsportPoiType.hcLevelClimbing,
    ),
    PoiTypeMappingEntry(
      gpxType: 'FIRST CATEGORY',
      igpsportType: IgpsportPoiType.oneLevelClimbing,
    ),
    PoiTypeMappingEntry(
      gpxType: 'SECOND CATEGORY',
      igpsportType: IgpsportPoiType.twoLevelClimbing,
    ),
    PoiTypeMappingEntry(
      gpxType: 'THIRD CATEGORY',
      igpsportType: IgpsportPoiType.threeLevelClimbing,
    ),
    PoiTypeMappingEntry(
      gpxType: 'FOURTH CATEGORY',
      igpsportType: IgpsportPoiType.fourLevelClimbing,
    ),
    PoiTypeMappingEntry(
      gpxType: 'TOILET',
      igpsportType: IgpsportPoiType.waterCloset,
    ),
    PoiTypeMappingEntry(
      gpxType: 'SHOWER',
      igpsportType: IgpsportPoiType.servicePoint,
    ),
    PoiTypeMappingEntry(
      gpxType: 'GEAR',
      igpsportType: IgpsportPoiType.equipment,
    ),
    PoiTypeMappingEntry(
      gpxType: 'NAVAID',
      igpsportType: IgpsportPoiType.viaPoint,
    ),
    PoiTypeMappingEntry(
      gpxType: 'TRANSPORT',
      igpsportType: IgpsportPoiType.viaPoint,
    ),
    PoiTypeMappingEntry(
      gpxType: 'TRANSITION',
      igpsportType: IgpsportPoiType.viaPoint,
    ),
    PoiTypeMappingEntry(
      gpxType: 'CHECKPOINT',
      igpsportType: IgpsportPoiType.viaPoint,
    ),
    PoiTypeMappingEntry(
      gpxType: 'MEETING SPOT',
      igpsportType: IgpsportPoiType.rallyPoint,
    ),
    PoiTypeMappingEntry(
      gpxType: 'CAMPSITE',
      igpsportType: IgpsportPoiType.servicePoint,
    ),
    PoiTypeMappingEntry(
      gpxType: 'SHELTER',
      igpsportType: IgpsportPoiType.servicePoint,
    ),
    PoiTypeMappingEntry(
      gpxType: 'REST AREA',
      igpsportType: IgpsportPoiType.servicePoint,
    ),
    PoiTypeMappingEntry(
      gpxType: 'RACE OBSTACLE START',
      igpsportType: IgpsportPoiType.dangerousArea,
    ),
    PoiTypeMappingEntry(
      gpxType: 'RACE OBSTACLE END',
      igpsportType: IgpsportPoiType.dangerousArea,
    ),
    PoiTypeMappingEntry(
      gpxType: 'SUMMIT',
      igpsportType: IgpsportPoiType.hcLevelClimbing,
    ),
    PoiTypeMappingEntry(
      gpxType: 'TUNNEL',
      igpsportType: IgpsportPoiType.tunnel,
    ),
    PoiTypeMappingEntry(
      gpxType: 'BRIDGE',
      igpsportType: IgpsportPoiType.dangerousArea,
    ),
    PoiTypeMappingEntry(
      gpxType: 'VALLEY',
      igpsportType: IgpsportPoiType.valley,
    ),
    PoiTypeMappingEntry(
      gpxType: 'OVERLOOK',
      igpsportType: IgpsportPoiType.observationDeck,
    ),
    PoiTypeMappingEntry(gpxType: 'STORE', igpsportType: IgpsportPoiType.shop),
    PoiTypeMappingEntry(
      gpxType: 'ALERT',
      igpsportType: IgpsportPoiType.dangerousArea,
    ),
    PoiTypeMappingEntry(
      gpxType: 'DANGER',
      igpsportType: IgpsportPoiType.dangerousArea,
    ),
    PoiTypeMappingEntry(
      gpxType: 'OBSTACLE',
      igpsportType: IgpsportPoiType.dangerousArea,
    ),
    PoiTypeMappingEntry(
      gpxType: 'CROSSING',
      igpsportType: IgpsportPoiType.intersection,
    ),
    PoiTypeMappingEntry(
      gpxType: 'STEEP INCLINE',
      igpsportType: IgpsportPoiType.steepDescentAhead,
    ),
    PoiTypeMappingEntry(
      gpxType: 'SHARP CURVE',
      igpsportType: IgpsportPoiType.sharpBend,
    ),
  ],
);
