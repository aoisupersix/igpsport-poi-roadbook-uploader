import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:igpsport_poi_roadbook_uploader/common/providers/igpsport_credentials.dart';
import 'package:igpsport_poi_roadbook_uploader/common/providers/poi_type_mapping_controller.dart';
import 'package:igpsport_poi_roadbook_uploader/common/utils/poi_type_mapping_defaults.dart';
import 'package:igpsport_poi_roadbook_uploader/common/utils/preferences_service.dart';
import 'package:igpsport_poi_roadbook_uploader/common/utils/secure_storage_service.dart';
import 'package:igpsport_poi_roadbook_uploader/features/settings/providers/locale_controller.dart';
import 'package:igpsport_poi_roadbook_uploader/i18n/strings.g.dart';
import 'package:igpsport_poi_roadbook_uploader/router/router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Load credentials from secure storage at startup and inject them as the
  // provider's initial value.
  final initialCredentials = await SecureStorageService().getCredentials();

  // Apply the saved locale, falling back to the device locale when unset.
  final savedLocale = await PreferencesService().getLocale();
  if (savedLocale != null) {
    await LocaleSettings.setLocale(savedLocale);
  } else {
    await LocaleSettings.useDeviceLocale();
  }

  // Load the saved POI type mapping, falling back to the built-in default.
  final savedPoiTypeMapping =
      await PreferencesService().getPoiTypeMapping() ?? defaultPoiTypeMapping;

  runApp(
    ProviderScope(
      overrides: [
        igpsportCredentialsProvider.overrideWith(
          () => IgpsportCredentialsNotifier.fromModel(initialCredentials),
        ),
        localeControllerProvider.overrideWith(
          () => LocaleController.fromModel(savedLocale),
        ),
        poiTypeMappingControllerProvider.overrideWith(
          () => PoiTypeMappingController.fromModel(savedPoiTypeMapping),
        ),
      ],
      child: TranslationProvider(child: const App()),
    ),
  );
}

class App extends HookConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      onGenerateTitle: (context) => Translations.of(context).common.appName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF5195D9)),
      ),
      routerConfig: router,
      supportedLocales: AppLocaleUtils.supportedLocales,
      locale: TranslationProvider.of(context).flutterLocale,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
    );
  }
}
