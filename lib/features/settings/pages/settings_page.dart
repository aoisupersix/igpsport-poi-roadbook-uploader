import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:igpsport_poi_roadbook_uploader/common/utils/extensions/build_context.dart';
import 'package:igpsport_poi_roadbook_uploader/features/settings/providers/locale_controller.dart';
import 'package:igpsport_poi_roadbook_uploader/i18n/strings.g.dart';

/// Settings page that lets the user switch the app language.
class SettingsPage extends HookConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = context.t;
    final selectedLocale = ref.watch(localeControllerProvider);
    final controller = ref.read(localeControllerProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: Text(t.settings.title)),
      body: RadioGroup<AppLocale?>(
        groupValue: selectedLocale,
        onChanged: controller.setLocale,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
              child: Text(
                t.settings.language,
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            // Null means "follow the device locale".
            RadioListTile<AppLocale?>(
              value: null,
              title: Text(t.settings.systemDefault),
            ),
            for (final locale in AppLocale.values)
              RadioListTile<AppLocale?>(
                value: locale,
                title: Text(locale.translations.common.languageName),
              ),
          ],
        ),
      ),
    );
  }
}
