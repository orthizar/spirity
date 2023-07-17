// Test personalization features

import 'package:flutter_test/flutter_test.dart';
import 'package:spirity/main.dart';

void main() {
  testWidgets('Test dashboard personalization', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const SpirityApp());
    var name = 'John';
    // Verify that the dynamic greeting contains the correct name.
    expect(find.textContaining(RegExp(r'[a-zA-Z]+, ' "$name" '[!.]')),
        findsOneWidget);
  });
}
