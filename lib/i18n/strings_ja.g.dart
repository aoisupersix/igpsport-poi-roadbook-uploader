///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsJa with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsJa({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsJa _root = this; // ignore: unused_field

	@override 
	TranslationsJa $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsJa(meta: meta ?? this.$meta);

	// Translations
	@override late final Translations$appInfo$ja appInfo = Translations$appInfo$ja._(_root);
	@override late final Translations$common$ja common = Translations$common$ja._(_root);
	@override late final Translations$credentials$ja credentials = Translations$credentials$ja._(_root);
	@override late final Translations$home$ja home = Translations$home$ja._(_root);
}

// Path: appInfo
class Translations$appInfo$ja implements Translations$appInfo$en {
	Translations$appInfo$ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get aboutApp => 'アプリについて';
	@override String appVersion({required String version}) => 'バージョン: ${version}';
	@override String appBuildNumber({required String buildNumber}) => 'ビルド番号: ${buildNumber}';
	@override String get appDescription => 'iGPSPORT サイクルコンピュータ向けに POI を含むロードブックを作成・アップロードするアプリです。';
	@override String get failedToGetPackageInfo => 'パッケージ情報の取得に失敗しました。';
}

// Path: common
class Translations$common$ja implements Translations$common$en {
	Translations$common$ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get appName => 'iGPSPORT POI ロードブックアップローダー';
	@override String get languageName => '日本語';
	@override String get ok => 'OK';
	@override String get cancel => 'キャンセル';
	@override String get save => '保存';
	@override String get edit => '編集';
	@override String get delete => '削除';
	@override String get error => 'エラー';
	@override String get notSet => '未設定';
	@override String get back => '戻る';
	@override String get loading => '読み込み中...';
}

// Path: credentials
class Translations$credentials$ja implements Translations$credentials$en {
	Translations$credentials$ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'iGPSPORT アカウント';
	@override String get description => 'iGPSPORT のメールアドレスとパスワードを入力してください。入力した情報は端末内に安全に保存されます。';
	@override String get email => 'メールアドレス';
	@override String get emailHint => 'you@example.com';
	@override String get password => 'パスワード';
	@override String get passwordHint => 'パスワード';
	@override String get requiredField => '入力してください。';
	@override String get invalidEmail => 'メールアドレスの形式が正しくありません。';
	@override String get saved => 'アカウント情報を保存しました。';
	@override String saveFailed({required String message}) => '保存に失敗しました: ${message}';
	@override String get deleteAccount => '登録済みアカウントを削除';
	@override String get deleted => 'アカウント情報を削除しました。';
}

// Path: home
class Translations$home$ja implements Translations$home$en {
	Translations$home$ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ホーム';
	@override String get accountSection => 'iGPSPORT アカウント';
	@override String get accountRegistered => '登録済み';
	@override String get accountNotRegistered => '未登録';
	@override String get registerAccount => 'アカウントを登録';
	@override String get editAccount => 'アカウントを編集';
	@override String get aboutApp => 'アプリについて';
}

/// The flat map containing all translations for locale <ja>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsJa {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'appInfo.aboutApp' => 'アプリについて',
			'appInfo.appVersion' => ({required String version}) => 'バージョン: ${version}',
			'appInfo.appBuildNumber' => ({required String buildNumber}) => 'ビルド番号: ${buildNumber}',
			'appInfo.appDescription' => 'iGPSPORT サイクルコンピュータ向けに POI を含むロードブックを作成・アップロードするアプリです。',
			'appInfo.failedToGetPackageInfo' => 'パッケージ情報の取得に失敗しました。',
			'common.appName' => 'iGPSPORT POI ロードブックアップローダー',
			'common.languageName' => '日本語',
			'common.ok' => 'OK',
			'common.cancel' => 'キャンセル',
			'common.save' => '保存',
			'common.edit' => '編集',
			'common.delete' => '削除',
			'common.error' => 'エラー',
			'common.notSet' => '未設定',
			'common.back' => '戻る',
			'common.loading' => '読み込み中...',
			'credentials.title' => 'iGPSPORT アカウント',
			'credentials.description' => 'iGPSPORT のメールアドレスとパスワードを入力してください。入力した情報は端末内に安全に保存されます。',
			'credentials.email' => 'メールアドレス',
			'credentials.emailHint' => 'you@example.com',
			'credentials.password' => 'パスワード',
			'credentials.passwordHint' => 'パスワード',
			'credentials.requiredField' => '入力してください。',
			'credentials.invalidEmail' => 'メールアドレスの形式が正しくありません。',
			'credentials.saved' => 'アカウント情報を保存しました。',
			'credentials.saveFailed' => ({required String message}) => '保存に失敗しました: ${message}',
			'credentials.deleteAccount' => '登録済みアカウントを削除',
			'credentials.deleted' => 'アカウント情報を削除しました。',
			'home.title' => 'ホーム',
			'home.accountSection' => 'iGPSPORT アカウント',
			'home.accountRegistered' => '登録済み',
			'home.accountNotRegistered' => '未登録',
			'home.registerAccount' => 'アカウントを登録',
			'home.editAccount' => 'アカウントを編集',
			'home.aboutApp' => 'アプリについて',
			_ => null,
		};
	}
}
