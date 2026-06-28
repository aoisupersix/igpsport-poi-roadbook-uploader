import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:igpsport_poi_roadbook_uploader/common/utils/extensions/build_context.dart';
import 'package:package_info_plus/package_info_plus.dart';

/// Page that displays app information such as the app name and version.
class AppInfoPage extends HookConsumerWidget {
  const AppInfoPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = context.t;
    final packageInfoFuture = useMemoized(PackageInfo.fromPlatform);
    final packageInfo = useFuture(packageInfoFuture);

    return Scaffold(
      appBar: AppBar(title: Text(t.appInfo.aboutApp)),
      body: switch (packageInfo) {
        AsyncSnapshot(connectionState: ConnectionState.waiting) =>
          const Center(child: CircularProgressIndicator()),
        AsyncSnapshot(hasError: true) =>
          Center(child: Text(t.appInfo.failedToGetPackageInfo)),
        AsyncSnapshot(data: final info?) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
            child: Column(
              spacing: 8,
              children: [
                Text(
                  info.appName,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                Text(t.appInfo.appVersion(version: info.version)),
                Text(t.appInfo.appBuildNumber(buildNumber: info.buildNumber)),
                const SizedBox(height: 16),
                Text(t.appInfo.appDescription, textAlign: TextAlign.center),
              ],
            ),
          ),
        _ => const SizedBox.shrink(),
      },
    );
  }
}
