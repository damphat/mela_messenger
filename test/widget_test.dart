import 'package:flutter_test/flutter_test.dart';
import 'package:mela_messenger/main.dart';

void main() {
  testWidgets('The app is Mela Messenger', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Mela Messenger'), findsOneWidget);
  });

  testWidgets('It has 2 tabs called CHAT and VIDEO',
      (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('CHAT'), findsOneWidget);
    expect(find.text('VIDEO'), findsOneWidget);
  });
}
