import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:young_college/features/userauth/presentation/pages/activity_edit2.dart';

void main() {
  testWidgets('EditActivity2 UI Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(
      home: EditActivity2(),
    ));

    // Verify that the app bar has the correct title.
    expect(find.text('Student Profile'), findsOneWidget);

    // Verify that the "Edit Profile" text is displayed.
    expect(find.text('Edit Profile'), findsOneWidget);

    // Verify that the "Profile Picture" text is displayed.
    expect(find.text('Profile Picture'), findsOneWidget);

    // Verify that the "Choose Photo" text is displayed.
    expect(find.text('Choose Photo'), findsOneWidget);

    // Verify that the "Full Name" text is displayed.
    expect(find.text('Full Name'), findsOneWidget);

    // Verify that the "Email" text is displayed.
    expect(find.text('Email'), findsOneWidget);

    // Verify that the "Save" button is displayed.
    expect(find.text('Save'), findsOneWidget);
  });
}