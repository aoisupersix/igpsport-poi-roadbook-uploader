import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:igpsport_poi_roadbook_uploader/common/providers/igpsport_credentials.dart';
import 'package:igpsport_poi_roadbook_uploader/router/routes.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

/// Provider for the [GoRouter] that handles routing.
@riverpod
GoRouter router(Ref ref) {
  // Re-evaluate the redirect whenever the presence of credentials changes.
  final refreshListenable = ValueNotifier<int>(0);
  ref
    ..listen(
      igpsportCredentialsProvider,
      (_, _) => refreshListenable.value++,
    )
    ..onDispose(refreshListenable.dispose);

  return GoRouter(
    debugLogDiagnostics: kDebugMode,
    refreshListenable: refreshListenable,
    routes: $appRoutes,
    redirect: (context, state) {
      final hasCredentials =
          ref.read(igpsportCredentialsProvider) != null;
      final isOnCredentialsPage =
          state.matchedLocation == const CredentialsFormRoute().location;

      // Guide the user to the input page when credentials are not registered,
      // such as on first launch.
      if (!hasCredentials && !isOnCredentialsPage) {
        return const CredentialsFormRoute().location;
      }
      return null;
    },
  );
}
