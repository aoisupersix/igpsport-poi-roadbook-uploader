import 'dart:convert';

import 'package:igpsport_poi_roadbook_uploader/common/utils/http_session.dart';
import 'package:igpsport_poi_roadbook_uploader/common/utils/json_util.dart';
import 'package:igpsport_poi_roadbook_uploader/features/upload/models/igpsport_poi.dart';
import 'package:igpsport_poi_roadbook_uploader/features/upload/models/roadbook_privacy.dart';
import 'package:igpsport_poi_roadbook_uploader/features/upload/utils/igpsport_endpoints.dart';

/// Callback used to surface progress messages while uploading.
typedef UploadLogCallback = void Function(String message);

/// Client that uploads a GPX route to iGPSPORT as a roadbook, sets its
/// visibility, and registers POIs.
///
/// The flow combines two sessions: the cookie-based web session
/// (i.igpsport.com) for the multipart upload and RoadList lookup, and the
/// Bearer-authenticated service session for editing visibility and POIs.
class IgpsportUploadClient {
  IgpsportUploadClient({
    required this.username,
    required this.password,
    this.onLog,
  })  : _webSession = HttpSession(
          headers: {
            'user-agent': browserUserAgent,
            'accept': '*/*',
            'x-requested-with': 'XMLHttpRequest',
            'origin': igpsportWebBaseUrl,
            'referer': igpsportWebUploadReferer,
          },
        ),
        _serviceSession = HttpSession(
          headers: {
            'user-agent': browserUserAgent,
            'accept': 'application/json, text/plain, */*',
            'origin': igpsportServiceReferer,
            'referer': igpsportServiceReferer,
          },
        );

  final String username;
  final String password;
  final UploadLogCallback? onLog;
  final HttpSession _webSession;
  final HttpSession _serviceSession;

  void _log(String message) => onLog?.call(message);

  /// Releases the underlying HTTP clients.
  void close() {
    _webSession.close();
    _serviceSession.close();
  }

  /// Logs in to the web session (i.igpsport.com) and stores session cookies.
  ///
  /// This must be called only after a prior request to i.igpsport.com (e.g. the
  /// upload attempt) so the session already carries the cookies that the login
  /// endpoint requires; calling it cold returns HTTP 403.
  Future<void> webLogin() async {
    final url = '$igpsportWebBaseUrl$igpsportWebLoginPath';
    _log('POST $url');
    final response = await _webSession.postJson(
      Uri.parse(url),
      json: {'username': username, 'password': password},
      timeout: const Duration(seconds: 30),
    );
    _log('web login -> HTTP ${response.statusCode}');
    if (!response.ok) {
      throw StateError(
        'iGPSPORT web login failed: HTTP ${response.statusCode} '
        '${_preview(response)}',
      );
    }
    final code = jsonGetCi(response.jsonBody(), 'code');
    if (code != 0 && code != '0') {
      throw StateError('iGPSPORT web login failed: ${_preview(response)}');
    }
  }

  /// Uploads [bytes] as a roadbook named [title] via the web upload endpoint.
  Future<void> uploadRoute(
    String title,
    String filename,
    List<int> bytes,
  ) async {
    final files = [
      MultipartFile(
        field: 'file',
        filename: filename,
        bytes: bytes,
        contentType: _contentTypeForFile(filename),
      ),
    ];
    final fields = {'title': title, 'descr': ''};

    _log('POST $igpsportWebUploadUrl ($filename, ${bytes.length} bytes)');
    var response = await _webSession.request(
      'POST',
      Uri.parse(igpsportWebUploadUrl),
      formFields: fields,
      files: files,
      timeout: const Duration(seconds: 60),
    );
    _log('upload -> HTTP ${response.statusCode}');

    final (success, reason) = _isWebUploadSuccess(response);
    if (success) return;

    // Cookies were stale or the server returned an opaque failure: log in once
    // (the failed attempt above seeded the session cookies) and retry.
    if (_looksLikeLoginRequired(response) || reason.isNotEmpty) {
      _log('Upload needs authentication; logging in and retrying...');
      await webLogin();
      _log('POST $igpsportWebUploadUrl (retry)');
      response = await _webSession.request(
        'POST',
        Uri.parse(igpsportWebUploadUrl),
        formFields: fields,
        files: files,
        timeout: const Duration(seconds: 60),
      );
      _log('upload retry -> HTTP ${response.statusCode}');
      final (retrySuccess, retryReason) = _isWebUploadSuccess(response);
      if (retrySuccess) return;
      throw StateError('Web upload failed after re-login: $retryReason');
    }

    throw StateError('Web upload failed: $reason');
  }

  /// Resolves the roadbook ID of the route whose title equals [title].
  Future<int> resolveRoadbookId(String title) async {
    var response = await _fetchRoadlist();
    _log('roadlist -> HTTP ${response.statusCode}');
    if (_looksLikeLoginRequired(response)) {
      _log('RoadList needs authentication; logging in and retrying...');
      await webLogin();
      response = await _fetchRoadlist();
      _log('roadlist retry -> HTTP ${response.statusCode}');
    }
    if (!response.ok) {
      throw StateError(
        'Failed to load RoadList: HTTP ${response.statusCode} '
        '${_preview(response)}',
      );
    }

    final target = title.trim();
    for (final item in _extractRoadlistItems(response.jsonBody())) {
      if (item is! Map) continue;
      final itemTitle = jsonGetCi(item, 'title');
      if (itemTitle is! String || itemTitle.trim() != target) continue;
      final rawId = jsonGetCi(item, 'roadbookid');
      final id = rawId is int ? rawId : int.tryParse('$rawId');
      if (id != null) return id;
    }
    throw StateError('Uploaded route not found in RoadList by title: $target');
  }

  Future<SessionResponse> _fetchRoadlist() => _webSession.get(
        Uri.parse(igpsportWebRoadlistUrl),
        params: {
          'type': 'mine',
          'pageSize': '$igpsportRoadlistPageSize',
          'pageIndex': '1',
        },
        headers: const {
          'accept': '*/*',
          'accept-language': 'ja,en-US;q=0.9,en;q=0.8',
          'x-requested-with': 'XMLHttpRequest',
          'referer': igpsportWebRoadlistReferer,
          'sec-fetch-dest': 'empty',
          'sec-fetch-mode': 'cors',
          'sec-fetch-site': 'same-origin',
        },
        timeout: const Duration(seconds: 30),
      );

  /// Logs in to the service API and stores the Bearer access token.
  Future<void> serviceLogin() async {
    final url = '$igpsportServiceBaseUrl/auth/account/login';
    _log('POST $url');
    final response = await _serviceSession.postJson(
      Uri.parse(url),
      json: {
        'username': username,
        'password': password,
        'appId': 'igpsport-web',
      },
      timeout: const Duration(seconds: 30),
    );
    _log('service login -> HTTP ${response.statusCode}');
    if (!response.ok) {
      throw StateError(
        'iGPSPORT login failed: HTTP ${response.statusCode} '
        '${_preview(response)}',
      );
    }
    final data = response.jsonBody();
    if (jsonGetCi(data, 'code') != 0) {
      throw StateError('iGPSPORT login failed: ${_preview(response)}');
    }
    final token = jsonGetCi(jsonGetCi(data, 'data'), 'accessToken');
    if (token is! String || token.isEmpty) {
      throw StateError('iGPSPORT login succeeded but no access token returned');
    }
    _serviceSession.defaultHeaders['authorization'] = 'Bearer $token';
  }

  /// Sets the roadbook visibility via the service API.
  Future<void> setPrivacy(
    int roadbookId,
    String title,
    RoadbookPrivacy privacy,
  ) async {
    final response = await _serviceSession.request(
      'PUT',
      Uri.parse('$igpsportServiceBaseUrl/web/api/Routes/EditRoutesSummary'),
      jsonBody: {'title': title, 'status': privacy.status, 'id': roadbookId},
      headers: const {
        'content-type': 'application/json',
        'accept': 'application/json, text/plain, */*',
        'accept-language': 'ja',
        'qiwu-app-version': '8.07.06',
        'timezone': 'Asia/Tokyo',
      },
      timeout: const Duration(seconds: 30),
    );
    _log('set visibility -> HTTP ${response.statusCode}');
    if (!response.ok) {
      throw StateError(
        'Failed to set visibility: HTTP ${response.statusCode} '
        '${_preview(response)}',
      );
    }
    final code = jsonGetCi(response.jsonBody(), 'code');
    if (code != 0 && code != '0') {
      throw StateError('Failed to set visibility: ${_preview(response)}');
    }
  }

  /// Registers [points] as auxiliary points (POIs) on the roadbook.
  Future<void> setAuxiliaryPoints(
    int roadbookId,
    List<PoiCandidate> points,
  ) async {
    if (points.isEmpty) return;

    final response = await _serviceSession.request(
      'PUT',
      Uri.parse(
        '$igpsportServiceBaseUrl/sportg/roadbook4j/road-book/'
        'editRoutesAuxiliaryPoint',
      ),
      jsonBody: {
        'roadBookId': roadbookId,
        'editRoutesAuxiliaryPointRequestDtos': [
          for (final point in points)
            {
              'auxiliaryPointType': point.poiType.value,
              'auxiliaryPointName': point.name,
              'latitude': point.latitude,
              'selected': false,
              'longitude': point.longitude,
              'auxiliaryPointNameOrigin': point.nameOrigin,
            },
        ],
      },
      headers: const {
        'content-type': 'application/json; charset=utf-8',
        'accept': '*/*',
        'qiwu-app-version': '8.06.35',
        'accept-language': 'en',
        'timezone': 'Asia/Tokyo',
      },
      timeout: const Duration(seconds: 30),
    );
    _log('set POIs -> HTTP ${response.statusCode}');
    if (!response.ok) {
      throw StateError(
        'Failed to set POIs: HTTP ${response.statusCode} ${_preview(response)}',
      );
    }
    final code = jsonGetCi(response.jsonBody(), 'code');
    if (code != 0 && code != '0') {
      throw StateError('Failed to set POIs: ${_preview(response)}');
    }
  }

  String _contentTypeForFile(String filename) {
    final lower = filename.toLowerCase();
    if (lower.endsWith('.gpx')) return 'application/gpx+xml';
    if (lower.endsWith('.tcx')) return 'application/vnd.garmin.tcx+xml';
    return 'application/octet-stream';
  }

  /// Returns a single-line, truncated preview of the response body for logs.
  String _preview(SessionResponse response) {
    final body = response.body.replaceAll(RegExp(r'\s+'), ' ').trim();
    return body.length > 300 ? '${body.substring(0, 300)}...' : body;
  }

  (bool, String) _isWebUploadSuccess(SessionResponse response) {
    final preview = response.body.length > 300
        ? response.body.substring(0, 300)
        : response.body;
    if (!response.ok) {
      return (false, 'HTTP ${response.statusCode}: $preview');
    }

    dynamic payload;
    try {
      payload = response.jsonBody();
    } catch (_) {
      payload = null;
    }

    if (payload is Map) {
      final code = jsonGetCi(payload, 'code');
      final data = jsonGetCi(payload, 'data');
      if (code == 0 || code == '0') {
        if (data is String && data.toLowerCase().contains('not_found')) {
          return (false, preview);
        }
        return (true, '');
      }
      return (false, preview);
    }

    final lower = preview.trim().toLowerCase();
    if ({'ok', 'success', 'true', '1'}.contains(lower)) return (true, '');
    final asInt = int.tryParse(preview.trim());
    if (asInt != null && asInt >= 0) return (true, '');
    return (false, preview);
  }

  bool _looksLikeLoginRequired(SessionResponse response) {
    if (response.statusCode == 401 || response.statusCode == 403) return true;
    final lower = response.body.toLowerCase();
    return lower.contains('auth/login') || lower.contains('please login');
  }

  List<dynamic> _extractRoadlistItems(dynamic payloadIn) {
    var payload = payloadIn;
    if (payload is String) {
      try {
        payload = jsonDecode(payload);
      } catch (_) {
        return [];
      }
    }
    if (payload is List) return payload;
    if (payload is! Map) return [];

    final data = jsonGetCi(payload, 'data');
    if (data is List) return data;
    if (data is Map) {
      final items = jsonGetCi(data, 'items');
      if (items is List) return items;
    }
    final items = jsonGetCi(payload, 'items');
    if (items is List) return items;
    return [];
  }
}
