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
	@override late final Translations$poiMapping$ja poiMapping = Translations$poiMapping$ja._(_root);
	@override late final Translations$settings$ja settings = Translations$settings$ja._(_root);
	@override late final Translations$upload$ja upload = Translations$upload$ja._(_root);
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
	@override String get howItWorksTitle => '仕組み';
	@override String get howItWorks => 'ブラウザや公式アプリを模したセッションで GPX ルートをロードブックとしてアップロードし、サービス API 経由で公開設定と POI を登録します。';
	@override String get disclaimer => '本アプリは iGPSPORT の公式 Web/サービス API（仕様が公開されていないもの）を利用しています。これらの仕様変更により予告なく動作しなくなる場合があります。本アプリは非公式のサードパーティ製であり、iGPSPORT 社とは関係ありません。';
	@override String get failedToGetPackageInfo => 'パッケージ情報の取得に失敗しました。';
}

// Path: common
class Translations$common$ja implements Translations$common$en {
	Translations$common$ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get appName => 'iGPSPORTロードブックアップローダー';
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
	@override String get description => 'iGPSPORT のメールアドレスとパスワードを入力してください。入力した情報は端末内に保存されます。';
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
	@override String get description => 'iGPSPORTのロードブックをPOI(Point of Interest)を含めてgpxファイルからアップロードします。';
	@override String get accountSection => 'iGPSPORT アカウント';
	@override String get accountRegistered => '設定済み';
	@override String get accountNotRegistered => '未設定';
	@override String get registerAccount => 'アカウントを設定';
	@override String get editAccount => 'アカウントを編集';
	@override String get uploadRoadbook => 'ロードブックをアップロード';
	@override String get aboutApp => 'アプリについて';
}

// Path: poiMapping
class Translations$poiMapping$ja implements Translations$poiMapping$en {
	Translations$poiMapping$ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'POI種別のマッピング';
	@override String get description => 'GPX の POI 種別を iGPSPORT の種別にマッピングします。一致しない種別はデフォルトに割り当てられます。';
	@override String get defaultTypeLabel => '未一致時のデフォルト種別';
	@override String get mappingsLabel => 'マッピング';
	@override String get gpxTypeLabel => 'GPX 種別';
	@override String get igpsportTypeLabel => 'iGPSPORT 種別';
	@override String get empty => 'マッピングがまだありません。';
	@override String get addEntry => 'マッピングを追加';
	@override String get editEntry => 'マッピングを編集';
	@override String get delete => '削除';
	@override String get reset => '初期値に戻す';
	@override String get resetConfirmTitle => '初期値に戻しますか？';
	@override String get resetConfirmMessage => 'すべてのマッピングが初期状態に戻ります。この操作は取り消せません。';
	@override String get cancel => 'キャンセル';
	@override String get save => '保存';
	@override String get gpxTypeRequired => 'GPX 種別を入力してください。';
	@override String get duplicateError => 'この GPX 種別は既に登録されています。';
}

// Path: settings
class Translations$settings$ja implements Translations$settings$en {
	Translations$settings$ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '設定';
	@override String get language => '言語';
	@override String get systemDefault => '端末の設定に従う';
	@override String get poiMapping => 'POI種別のマッピング';
	@override String get poiMappingSubtitle => 'GPX と iGPSPORT の POI 種別のマッピングを設定します';
}

// Path: upload
class Translations$upload$ja implements Translations$upload$en {
	Translations$upload$ja._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ロードブックのアップロード';
	@override String get pickGpxFile => 'GPX ファイルを選択';
	@override String get roadbookTitle => 'ロードブック名';
	@override String get public => '公開';
	@override String get private => '非公開';
	@override String get upload => 'アップロード';
	@override String get logs => 'ログ';
	@override String get clearLogs => 'クリア';
	@override String get logsEmpty => 'アップロードを開始するとここにログが表示されます。';
	@override String get resultSuccess => 'アップロードが完了しました。';
	@override String get resultFailure => 'アップロードに失敗しました。ログを確認してください。';
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
			'appInfo.howItWorksTitle' => '仕組み',
			'appInfo.howItWorks' => 'ブラウザや公式アプリを模したセッションで GPX ルートをロードブックとしてアップロードし、サービス API 経由で公開設定と POI を登録します。',
			'appInfo.disclaimer' => '本アプリは iGPSPORT の公式 Web/サービス API（仕様が公開されていないもの）を利用しています。これらの仕様変更により予告なく動作しなくなる場合があります。本アプリは非公式のサードパーティ製であり、iGPSPORT 社とは関係ありません。',
			'appInfo.failedToGetPackageInfo' => 'パッケージ情報の取得に失敗しました。',
			'common.appName' => 'iGPSPORTロードブックアップローダー',
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
			'credentials.description' => 'iGPSPORT のメールアドレスとパスワードを入力してください。入力した情報は端末内に保存されます。',
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
			'home.description' => 'iGPSPORTのロードブックをPOI(Point of Interest)を含めてgpxファイルからアップロードします。',
			'home.accountSection' => 'iGPSPORT アカウント',
			'home.accountRegistered' => '設定済み',
			'home.accountNotRegistered' => '未設定',
			'home.registerAccount' => 'アカウントを設定',
			'home.editAccount' => 'アカウントを編集',
			'home.uploadRoadbook' => 'ロードブックをアップロード',
			'home.aboutApp' => 'アプリについて',
			'poiMapping.title' => 'POI種別のマッピング',
			'poiMapping.description' => 'GPX の POI 種別を iGPSPORT の種別にマッピングします。一致しない種別はデフォルトに割り当てられます。',
			'poiMapping.defaultTypeLabel' => '未一致時のデフォルト種別',
			'poiMapping.mappingsLabel' => 'マッピング',
			'poiMapping.gpxTypeLabel' => 'GPX 種別',
			'poiMapping.igpsportTypeLabel' => 'iGPSPORT 種別',
			'poiMapping.empty' => 'マッピングがまだありません。',
			'poiMapping.addEntry' => 'マッピングを追加',
			'poiMapping.editEntry' => 'マッピングを編集',
			'poiMapping.delete' => '削除',
			'poiMapping.reset' => '初期値に戻す',
			'poiMapping.resetConfirmTitle' => '初期値に戻しますか？',
			'poiMapping.resetConfirmMessage' => 'すべてのマッピングが初期状態に戻ります。この操作は取り消せません。',
			'poiMapping.cancel' => 'キャンセル',
			'poiMapping.save' => '保存',
			'poiMapping.gpxTypeRequired' => 'GPX 種別を入力してください。',
			'poiMapping.duplicateError' => 'この GPX 種別は既に登録されています。',
			'settings.title' => '設定',
			'settings.language' => '言語',
			'settings.systemDefault' => '端末の設定に従う',
			'settings.poiMapping' => 'POI種別のマッピング',
			'settings.poiMappingSubtitle' => 'GPX と iGPSPORT の POI 種別のマッピングを設定します',
			'upload.title' => 'ロードブックのアップロード',
			'upload.pickGpxFile' => 'GPX ファイルを選択',
			'upload.roadbookTitle' => 'ロードブック名',
			'upload.public' => '公開',
			'upload.private' => '非公開',
			'upload.upload' => 'アップロード',
			'upload.logs' => 'ログ',
			'upload.clearLogs' => 'クリア',
			'upload.logsEmpty' => 'アップロードを開始するとここにログが表示されます。',
			'upload.resultSuccess' => 'アップロードが完了しました。',
			'upload.resultFailure' => 'アップロードに失敗しました。ログを確認してください。',
			_ => null,
		};
	}
}
