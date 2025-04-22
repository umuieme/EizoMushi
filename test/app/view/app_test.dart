import 'package:eizo_mushi/app/app.dart';
import 'package:eizo_mushi/features/main/ui/screen/main_screen.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(MainScreen), findsOneWidget);
    });
  });
}
