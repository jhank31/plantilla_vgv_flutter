import 'package:flutter_test/flutter_test.dart';
import 'package:plantilla_vgv/app/app.dart';
import 'package:plantilla_vgv/features/home/presentation/home_page.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(HomePage), findsOneWidget);
    });
  });
}
