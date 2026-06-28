///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations with BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final i18n = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations
	late final Translations$appInfo$en appInfo = Translations$appInfo$en._(_root);
	late final Translations$common$en common = Translations$common$en._(_root);
	late final Translations$credentials$en credentials = Translations$credentials$en._(_root);
	late final Translations$home$en home = Translations$home$en._(_root);
	late final Translations$poiMapping$en poiMapping = Translations$poiMapping$en._(_root);
	late final Translations$settings$en settings = Translations$settings$en._(_root);
	late final Translations$upload$en upload = Translations$upload$en._(_root);
}

// Path: appInfo
class Translations$appInfo$en {
	Translations$appInfo$en._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'About App'
	String get aboutApp => 'About App';

	/// en: 'Version: ${version: String}'
	String appVersion({required String version}) => 'Version: ${version}';

	/// en: 'Build Number: ${buildNumber: String}'
	String appBuildNumber({required String buildNumber}) => 'Build Number: ${buildNumber}';

	/// en: 'An app for creating and uploading roadbooks with POIs for iGPSPORT cycling computers.'
	String get appDescription => 'An app for creating and uploading roadbooks with POIs for iGPSPORT cycling computers.';

	/// en: 'How it works'
	String get howItWorksTitle => 'How it works';

	/// en: 'It signs in with sessions that mimic the browser and official app, uploads your GPX route as a roadbook, then sets its visibility and registers POIs through the service API.'
	String get howItWorks => 'It signs in with sessions that mimic the browser and official app, uploads your GPX route as a roadbook, then sets its visibility and registers POIs through the service API.';

	/// en: 'This app relies on iGPSPORT's unofficial, undocumented web/service APIs. It may stop working without notice if those change. This is an unofficial app and is not affiliated with iGPSPORT.'
	String get disclaimer => 'This app relies on iGPSPORT\'s unofficial, undocumented web/service APIs. It may stop working without notice if those change. This is an unofficial app and is not affiliated with iGPSPORT.';

	/// en: 'Failed to get package information.'
	String get failedToGetPackageInfo => 'Failed to get package information.';
}

// Path: common
class Translations$common$en {
	Translations$common$en._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'iGPSPORT Roadbook Uploader'
	String get appName => 'iGPSPORT Roadbook Uploader';

	/// en: 'English'
	String get languageName => 'English';

	/// en: 'OK'
	String get ok => 'OK';

	/// en: 'Cancel'
	String get cancel => 'Cancel';

	/// en: 'Save'
	String get save => 'Save';

	/// en: 'Edit'
	String get edit => 'Edit';

	/// en: 'Delete'
	String get delete => 'Delete';

	/// en: 'Error'
	String get error => 'Error';

	/// en: 'Not Set'
	String get notSet => 'Not Set';

	/// en: 'Back'
	String get back => 'Back';

	/// en: 'Loading...'
	String get loading => 'Loading...';
}

// Path: credentials
class Translations$credentials$en {
	Translations$credentials$en._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'iGPSPORT Account'
	String get title => 'iGPSPORT Account';

	/// en: 'Enter your iGPSPORT email and password. Your information is stored securely on this device.'
	String get description => 'Enter your iGPSPORT email and password. Your information is stored securely on this device.';

	/// en: 'Email'
	String get email => 'Email';

	/// en: 'you@example.com'
	String get emailHint => 'you@example.com';

	/// en: 'Password'
	String get password => 'Password';

	/// en: 'Password'
	String get passwordHint => 'Password';

	/// en: 'This field is required.'
	String get requiredField => 'This field is required.';

	/// en: 'The email address format is invalid.'
	String get invalidEmail => 'The email address format is invalid.';

	/// en: 'Account information has been saved.'
	String get saved => 'Account information has been saved.';

	/// en: 'Failed to save: ${message: String}'
	String saveFailed({required String message}) => 'Failed to save: ${message}';

	/// en: 'Delete Saved Account'
	String get deleteAccount => 'Delete Saved Account';

	/// en: 'Account information has been deleted.'
	String get deleted => 'Account information has been deleted.';
}

// Path: home
class Translations$home$en {
	Translations$home$en._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Home'
	String get title => 'Home';

	/// en: 'Upload iGPSPORT roadbooks from GPX files, including POIs (Points of Interest).'
	String get description => 'Upload iGPSPORT roadbooks from GPX files, including POIs (Points of Interest).';

	/// en: 'iGPSPORT Account'
	String get accountSection => 'iGPSPORT Account';

	/// en: 'Registered'
	String get accountRegistered => 'Registered';

	/// en: 'Not Registered'
	String get accountNotRegistered => 'Not Registered';

	/// en: 'Register Account'
	String get registerAccount => 'Register Account';

	/// en: 'Edit Account'
	String get editAccount => 'Edit Account';

	/// en: 'Upload Roadbook'
	String get uploadRoadbook => 'Upload Roadbook';

	/// en: 'About App'
	String get aboutApp => 'About App';
}

// Path: poiMapping
class Translations$poiMapping$en {
	Translations$poiMapping$en._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'POI Type Mapping'
	String get title => 'POI Type Mapping';

	/// en: 'Map GPX POI types to iGPSPORT types. Unmatched types use the default.'
	String get description => 'Map GPX POI types to iGPSPORT types. Unmatched types use the default.';

	/// en: 'Default type for unmatched'
	String get defaultTypeLabel => 'Default type for unmatched';

	/// en: 'Mappings'
	String get mappingsLabel => 'Mappings';

	/// en: 'GPX type'
	String get gpxTypeLabel => 'GPX type';

	/// en: 'iGPSPORT type'
	String get igpsportTypeLabel => 'iGPSPORT type';

	/// en: 'No mappings yet.'
	String get empty => 'No mappings yet.';

	/// en: 'Add mapping'
	String get addEntry => 'Add mapping';

	/// en: 'Edit mapping'
	String get editEntry => 'Edit mapping';

	/// en: 'Delete'
	String get delete => 'Delete';

	/// en: 'Reset to defaults'
	String get reset => 'Reset to defaults';

	/// en: 'Reset to defaults?'
	String get resetConfirmTitle => 'Reset to defaults?';

	/// en: 'All mappings will be restored to their defaults. This cannot be undone.'
	String get resetConfirmMessage => 'All mappings will be restored to their defaults. This cannot be undone.';

	/// en: 'Cancel'
	String get cancel => 'Cancel';

	/// en: 'Save'
	String get save => 'Save';

	/// en: 'Enter a GPX type.'
	String get gpxTypeRequired => 'Enter a GPX type.';

	/// en: 'This GPX type is already mapped.'
	String get duplicateError => 'This GPX type is already mapped.';
}

// Path: settings
class Translations$settings$en {
	Translations$settings$en._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Settings'
	String get title => 'Settings';

	/// en: 'Language'
	String get language => 'Language';

	/// en: 'Follow device setting'
	String get systemDefault => 'Follow device setting';

	/// en: 'POI Type Mapping'
	String get poiMapping => 'POI Type Mapping';

	/// en: 'Configure GPX to iGPSPORT POI type mapping'
	String get poiMappingSubtitle => 'Configure GPX to iGPSPORT POI type mapping';
}

// Path: upload
class Translations$upload$en {
	Translations$upload$en._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Upload Roadbook'
	String get title => 'Upload Roadbook';

	/// en: 'Select GPX file'
	String get pickGpxFile => 'Select GPX file';

	/// en: 'Roadbook title'
	String get roadbookTitle => 'Roadbook title';

	/// en: 'Public'
	String get public => 'Public';

	/// en: 'Private'
	String get private => 'Private';

	/// en: 'Upload'
	String get upload => 'Upload';

	/// en: 'Logs'
	String get logs => 'Logs';

	/// en: 'Clear'
	String get clearLogs => 'Clear';

	/// en: 'Logs will appear here once an upload starts.'
	String get logsEmpty => 'Logs will appear here once an upload starts.';

	/// en: 'Upload completed successfully.'
	String get resultSuccess => 'Upload completed successfully.';

	/// en: 'Upload failed. Check the logs.'
	String get resultFailure => 'Upload failed. Check the logs.';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on Translations {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'appInfo.aboutApp' => 'About App',
			'appInfo.appVersion' => ({required String version}) => 'Version: ${version}',
			'appInfo.appBuildNumber' => ({required String buildNumber}) => 'Build Number: ${buildNumber}',
			'appInfo.appDescription' => 'An app for creating and uploading roadbooks with POIs for iGPSPORT cycling computers.',
			'appInfo.howItWorksTitle' => 'How it works',
			'appInfo.howItWorks' => 'It signs in with sessions that mimic the browser and official app, uploads your GPX route as a roadbook, then sets its visibility and registers POIs through the service API.',
			'appInfo.disclaimer' => 'This app relies on iGPSPORT\'s unofficial, undocumented web/service APIs. It may stop working without notice if those change. This is an unofficial app and is not affiliated with iGPSPORT.',
			'appInfo.failedToGetPackageInfo' => 'Failed to get package information.',
			'common.appName' => 'iGPSPORT Roadbook Uploader',
			'common.languageName' => 'English',
			'common.ok' => 'OK',
			'common.cancel' => 'Cancel',
			'common.save' => 'Save',
			'common.edit' => 'Edit',
			'common.delete' => 'Delete',
			'common.error' => 'Error',
			'common.notSet' => 'Not Set',
			'common.back' => 'Back',
			'common.loading' => 'Loading...',
			'credentials.title' => 'iGPSPORT Account',
			'credentials.description' => 'Enter your iGPSPORT email and password. Your information is stored securely on this device.',
			'credentials.email' => 'Email',
			'credentials.emailHint' => 'you@example.com',
			'credentials.password' => 'Password',
			'credentials.passwordHint' => 'Password',
			'credentials.requiredField' => 'This field is required.',
			'credentials.invalidEmail' => 'The email address format is invalid.',
			'credentials.saved' => 'Account information has been saved.',
			'credentials.saveFailed' => ({required String message}) => 'Failed to save: ${message}',
			'credentials.deleteAccount' => 'Delete Saved Account',
			'credentials.deleted' => 'Account information has been deleted.',
			'home.title' => 'Home',
			'home.description' => 'Upload iGPSPORT roadbooks from GPX files, including POIs (Points of Interest).',
			'home.accountSection' => 'iGPSPORT Account',
			'home.accountRegistered' => 'Registered',
			'home.accountNotRegistered' => 'Not Registered',
			'home.registerAccount' => 'Register Account',
			'home.editAccount' => 'Edit Account',
			'home.uploadRoadbook' => 'Upload Roadbook',
			'home.aboutApp' => 'About App',
			'poiMapping.title' => 'POI Type Mapping',
			'poiMapping.description' => 'Map GPX POI types to iGPSPORT types. Unmatched types use the default.',
			'poiMapping.defaultTypeLabel' => 'Default type for unmatched',
			'poiMapping.mappingsLabel' => 'Mappings',
			'poiMapping.gpxTypeLabel' => 'GPX type',
			'poiMapping.igpsportTypeLabel' => 'iGPSPORT type',
			'poiMapping.empty' => 'No mappings yet.',
			'poiMapping.addEntry' => 'Add mapping',
			'poiMapping.editEntry' => 'Edit mapping',
			'poiMapping.delete' => 'Delete',
			'poiMapping.reset' => 'Reset to defaults',
			'poiMapping.resetConfirmTitle' => 'Reset to defaults?',
			'poiMapping.resetConfirmMessage' => 'All mappings will be restored to their defaults. This cannot be undone.',
			'poiMapping.cancel' => 'Cancel',
			'poiMapping.save' => 'Save',
			'poiMapping.gpxTypeRequired' => 'Enter a GPX type.',
			'poiMapping.duplicateError' => 'This GPX type is already mapped.',
			'settings.title' => 'Settings',
			'settings.language' => 'Language',
			'settings.systemDefault' => 'Follow device setting',
			'settings.poiMapping' => 'POI Type Mapping',
			'settings.poiMappingSubtitle' => 'Configure GPX to iGPSPORT POI type mapping',
			'upload.title' => 'Upload Roadbook',
			'upload.pickGpxFile' => 'Select GPX file',
			'upload.roadbookTitle' => 'Roadbook title',
			'upload.public' => 'Public',
			'upload.private' => 'Private',
			'upload.upload' => 'Upload',
			'upload.logs' => 'Logs',
			'upload.clearLogs' => 'Clear',
			'upload.logsEmpty' => 'Logs will appear here once an upload starts.',
			'upload.resultSuccess' => 'Upload completed successfully.',
			'upload.resultFailure' => 'Upload failed. Check the logs.',
			_ => null,
		};
	}
}
