/// Endpoints and constants for the iGPSPORT upload flow.
///
/// These are reverse-engineered from the iGPSPORT web/service APIs and may
/// change without notice.
library;

/// Browser-like user agent shared by the iGPSPORT HTTP sessions.
const browserUserAgent =
    'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) '
    'AppleWebKit/537.36 (KHTML, like Gecko) '
    'Chrome/136.0.0.0 Safari/537.36';

/// Service API host used for login (Bearer token) and route editing.
const igpsportServiceDomain = 'prod.en.igpsport.com';

/// Service API base URL.
const igpsportServiceBaseUrl = 'https://$igpsportServiceDomain/service';

/// Origin/referer used for the service API session.
const igpsportServiceReferer = 'https://login.passport.igpsport.com';

/// Web (i.igpsport.com) host that handles cookie-based route upload.
const igpsportWebBaseUrl = 'https://i.igpsport.com';

/// Web login path that issues session cookies.
const igpsportWebLoginPath = '/Auth/Login';

/// Web multipart route upload endpoint.
const igpsportWebUploadUrl = 'https://i.igpsport.com/Routes/uploadroad';

/// Referer used for the web upload request.
const igpsportWebUploadReferer = 'https://i.igpsport.com/explorer/upload';

/// Web RoadList endpoint used to resolve the uploaded roadbook ID by title.
const igpsportWebRoadlistUrl = 'https://i.igpsport.com/Routes/RoadList';

/// Referer used for the RoadList request.
const igpsportWebRoadlistReferer =
    'https://i.igpsport.com/explorer/road?lang=ja';

/// Page size used when fetching the RoadList.
const igpsportRoadlistPageSize = 1000;
