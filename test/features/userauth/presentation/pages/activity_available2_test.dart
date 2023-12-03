import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:young_college/features/userauth/presentation/pages/activity_available2.dart';

void main() {
  testWidgets('Checking all components for activity_available2 UI Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(
      home: AvailableActivity2(),
    ));

    // Verify that the app bar has the correct title.
    expect(find.text('All Available Classes'), findsOneWidget);

    // Verify that the "Available Classes" text is displayed.
    expect(find.text('Available Classes'), findsOneWidget);

    // Verify that the "Based on your interests." text is displayed.
    expect(find.text('Based on your interests.'), findsOneWidget);

    // Verify that the ClassItem widgets are present.
    expect(find.text('Class Name 1'), findsOneWidget);
    expect(find.text('Instructor Name 1'), findsOneWidget);
    expect(find.byType(BottomAppBar), findsOneWidget);
    expect(find.byType(FloatingActionButton), findsOneWidget);


    // Verify that the "SEE ALL CLASSES" button is present.
    expect(find.text('SEE ALL CLASSES'), findsOneWidget);

    // Tap the "SEE ALL CLASSES" button.
    await tester.tap(find.text('SEE ALL CLASSES'));
    await tester.pump();
  });

  // Add more tests for bottom navigation bar, floating action button, and other interactions.
}