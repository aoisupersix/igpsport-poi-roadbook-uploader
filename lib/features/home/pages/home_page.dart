import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:igpsport_poi_roadbook_uploader/common/providers/igpsport_credentials.dart';
import 'package:igpsport_poi_roadbook_uploader/common/utils/extensions/build_context.dart';
import 'package:igpsport_poi_roadbook_uploader/router/routes.dart';

/// Home page that displays the app name and the registered account status.
class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = context.t;
    final credentials = ref.watch(igpsportCredentialsProvider);
    final isRegistered = credentials != null;

    return Scaffold(
      appBar: AppBar(
        title: Text(t.common.appName),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings_outlined),
            tooltip: t.settings.title,
            onPressed: () => const SettingsRoute().push<void>(context),
          ),
          IconButton(
            icon: const Icon(Icons.info_outline),
            tooltip: t.home.aboutApp,
            onPressed: () => const AppInfoRoute().push<void>(context),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Text(
                t.home.description,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(
                  isRegistered ? Icons.check_circle : Icons.error_outline,
                  color: isRegistered
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.error,
                ),
                title: Text(t.home.accountSection),
                subtitle: Text(
                  isRegistered
                      ? '${t.home.accountRegistered} (${credentials.email})'
                      : t.home.accountNotRegistered,
                ),
              ),
            ),
            const SizedBox(height: 16),
            FilledButton.icon(
              icon: Icon(isRegistered ? Icons.edit : Icons.login),
              label: Text(
                isRegistered ? t.home.editAccount : t.home.registerAccount,
              ),
              onPressed: () => const CredentialsFormRoute().push<void>(context),
            ),
            const SizedBox(height: 8),
            FilledButton.tonalIcon(
              icon: const Icon(Icons.cloud_upload),
              label: Text(t.home.uploadRoadbook),
              onPressed: isRegistered
                  ? () => const UploadRoute().push<void>(context)
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}
