import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:young_college/features/userauth/presentation/pages/edit_my_class.dart';

void main() {
  testWidgets('Edit_my_class Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(
      home: now(),
    ));

    // Verify the initial UI state of the ClassEditForm widget.
    expect(find.text('Class Type'), findsOneWidget);
    expect(find.text('Edit My Class'), findsOneWidget);
    expect(find.text('Select Class Type...'), findsOneWidget);
    expect(find.text('Class Name'), findsOneWidget);
    expect(find.text('Update Class'), findsOneWidget);
  });

  testWidgets('Check ElevatedButton', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(
      home: now(),
    ));

    // Verify the presence of ElevatedButton
    expect(find.byType(ElevatedButton), findsOneWidget);
  });
}

