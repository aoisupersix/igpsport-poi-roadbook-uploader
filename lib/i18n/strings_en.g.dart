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

	/// en: 'Failed to get package information.'
	String get failedToGetPackageInfo => 'Failed to get package information.';
}

// Path: common
class Translations$common$en {
	Translations$common$en._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'iGPSPORT POI Roadbook Uploader'
	String get appName => 'iGPSPORT POI Roadbook Uploader';

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

	/// en: 'About App'
	String get aboutApp => 'About App';
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
			'appInfo.failedToGetPackageInfo' => 'Failed to get package information.',
			'common.appName' => 'iGPSPORT POI Roadbook Uploader',
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
			'home.accountSection' => 'iGPSPORT Account',
			'home.accountRegistered' => 'Registered',
			'home.accountNotRegistered' => 'Not Registered',
			'home.registerAccount' => 'Register Account',
			'home.editAccount' => 'Edit Account',
			'home.aboutApp' => 'About App',
			_ => null,
		};
	}
}
