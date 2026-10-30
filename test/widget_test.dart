import 'package:flutter_test/flutter_test.dart';
import 'package:movie_app/main.dart';

void main() {
  testWidgets('MovieApp', (WidgetTester tester) async {
    await tester.pumpWidget(const MovieApp());
    expect(find.text('Now Playing'), findsOneWidget);
  });
}
