import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:igpsport_poi_roadbook_uploader/common/components/root_navigation.dart';
import 'package:igpsport_poi_roadbook_uploader/features/app_info/pages/app_info_page.dart';
import 'package:igpsport_poi_roadbook_uploader/features/credentials/pages/credentials_form_page.dart';
import 'package:igpsport_poi_roadbook_uploader/features/home/pages/home_page.dart';
import 'package:igpsport_poi_roadbook_uploader/features/poi_mapping/pages/poi_mapping_page.dart';
import 'package:igpsport_poi_roadbook_uploader/features/settings/pages/settings_page.dart';
import 'package:igpsport_poi_roadbook_uploader/features/upload/pages/upload_page.dart';

part 'routes.g.dart';

@TypedShellRoute<RootRoute>(
  routes: [
    TypedGoRoute<HomeRoute>(
      path: '/',
      routes: [
        TypedGoRoute<CredentialsFormRoute>(path: 'credentials'),
        TypedGoRoute<AppInfoRoute>(path: 'app_info'),
        TypedGoRoute<UploadRoute>(path: 'upload'),
        TypedGoRoute<SettingsRoute>(path: 'settings'),
        TypedGoRoute<PoiMappingRoute>(path: 'poi_mapping'),
      ],
    ),
  ],
)
class RootRoute extends ShellRouteData {
  const RootRoute();

  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) {
    return RootNavigation(child: navigator);
  }
}

/// Home page.
class HomeRoute extends GoRouteData with $HomeRoute {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}

/// iGPSPORT credentials input page.
class CredentialsFormRoute extends GoRouteData with $CredentialsFormRoute {
  const CredentialsFormRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const CredentialsFormPage();
  }
}

/// App info page.
class AppInfoRoute extends GoRouteData with $AppInfoRoute {
  const AppInfoRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AppInfoPage();
  }
}

/// Roadbook upload page.
class UploadRoute extends GoRouteData with $UploadRoute {
  const UploadRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const UploadPage();
  }
}

/// Settings page.
class SettingsRoute extends GoRouteData with $SettingsRoute {
  const SettingsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SettingsPage();
  }
}

/// POI type mapping page.
class PoiMappingRoute extends GoRouteData with $PoiMappingRoute {
  const PoiMappingRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const PoiMappingPage();
  }
}
