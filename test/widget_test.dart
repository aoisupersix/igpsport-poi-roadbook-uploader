import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:igpsport_poi_roadbook_uploader/features/home/pages/home_page.dart';
import 'package:igpsport_poi_roadbook_uploader/i18n/strings.g.dart';
import 'package:igpsport_poi_roadbook_uploader/main.dart';

void main() {
  testWidgets('launches on the home page without forcing credential entry',
      (tester) async {
    await tester.pumpWidget(
      TranslationProvider(child: const ProviderScope(child: App())),
    );
    await tester.pumpAndSettle();

    // Without credentials the app lands on home; only the upload flow is gated.
    expect(find.byType(HomePage), findsOneWidget);
  });
}
