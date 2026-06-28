import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:igpsport_poi_roadbook_uploader/features/credentials/pages/credentials_form_page.dart';
import 'package:igpsport_poi_roadbook_uploader/i18n/strings.g.dart';
import 'package:igpsport_poi_roadbook_uploader/main.dart';

void main() {
  testWidgets('redirects to the input page when no credentials are registered',
      (tester) async {
    await tester.pumpWidget(
      TranslationProvider(child: const ProviderScope(child: App())),
    );
    await tester.pumpAndSettle();

    // In the initial state (no credentials) the credentials input page is shown.
    expect(find.byType(CredentialsFormPage), findsOneWidget);
  });
}
