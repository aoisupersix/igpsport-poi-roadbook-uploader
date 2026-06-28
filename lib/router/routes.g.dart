// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$rootRoute];

RouteBase get $rootRoute => ShellRouteData.$route(
  factory: $RootRouteExtension._fromState,
  routes: [
    GoRouteData.$route(
      path: '/',
      factory: $HomeRoute._fromState,
      routes: [
        GoRouteData.$route(
          path: 'credentials',
          factory: $CredentialsFormRoute._fromState,
        ),
        GoRouteData.$route(path: 'app_info', factory: $AppInfoRoute._fromState),
        GoRouteData.$route(path: 'upload', factory: $UploadRoute._fromState),
        GoRouteData.$route(
          path: 'settings',
          factory: $SettingsRoute._fromState,
        ),
        GoRouteData.$route(
          path: 'poi_mapping',
          factory: $PoiMappingRoute._fromState,
        ),
      ],
    ),
  ],
);

extension $RootRouteExtension on RootRoute {
  static RootRoute _fromState(GoRouterState state) => const RootRoute();
}

mixin $HomeRoute on GoRouteData {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  @override
  String get location => GoRouteData.$location('/');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $CredentialsFormRoute on GoRouteData {
  static CredentialsFormRoute _fromState(GoRouterState state) =>
      const CredentialsFormRoute();

  @override
  String get location => GoRouteData.$location('/credentials');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $AppInfoRoute on GoRouteData {
  static AppInfoRoute _fromState(GoRouterState state) => const AppInfoRoute();

  @override
  String get location => GoRouteData.$location('/app_info');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $UploadRoute on GoRouteData {
  static UploadRoute _fromState(GoRouterState state) => const UploadRoute();

  @override
  String get location => GoRouteData.$location('/upload');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $SettingsRoute on GoRouteData {
  static SettingsRoute _fromState(GoRouterState state) => const SettingsRoute();

  @override
  String get location => GoRouteData.$location('/settings');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $PoiMappingRoute on GoRouteData {
  static PoiMappingRoute _fromState(GoRouterState state) =>
      const PoiMappingRoute();

  @override
  String get location => GoRouteData.$location('/poi_mapping');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}
