import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hen_selling_app/main.dart';  // Import the main.dart where MyApp is defined

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());  // No need for 'const' if MyApp doesn't have a const constructor
  // Make sure MyApp is defined in main.dart

    // Verify that the initial state of the app is correct.
    expect(find.text('0'), findsOneWidget);  // Check for the text '0'
    expect(find.text('1'), findsNothing);   // Make sure '1' doesn't exist initially

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));  // Find the add icon and tap it
    await tester.pump();  // Trigger a frame

    // Verify that the counter has incremented.
    expect(find.text('0'), findsNothing);   // Make sure '0' is no longer visible
    expect(find.text('1'), findsOneWidget);  // Ensure '1' appears after tapping the icon
  });
}
