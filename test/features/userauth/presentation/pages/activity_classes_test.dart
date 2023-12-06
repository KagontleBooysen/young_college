import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:young_college/features/userauth/presentation/pages/activity_classes.dart';


void main() {
  testWidgets('checking the text of our title...', (WidgetTester tester) async {
  await tester.pumpWidget(MaterialApp(home: AvailableActivity1()));
  await tester.pump();

  expect(find.text("All Available Classes"), findsOneWidget); 
  });

  testWidgets('checking the text of our widget...', (WidgetTester tester) async {
  await tester.pumpWidget(MaterialApp(home: AvailableActivity1()));
  await tester.pump();

  expect(find.text("Available Classes"), findsOneWidget); 
  });



Widget buildClassItem(String className, String instructorName, IconData icon) {
  return ListTile(
    title: Text(className),
    subtitle: Text('Instructor: $instructorName'),
    leading: Icon(icon),
  );
}
  testWidgets('buildClassItem should display class information', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: buildClassItem('Class Name 1', 'Instructor Name 1', Icons.person),
        ),
      ),
    );

    // Verify that the class name and instructor name are displayed.
    expect(find.text('Class Name 1'), findsOneWidget);
    expect(find.text('Instructor: Instructor Name 1'), findsOneWidget);

    // Verify that the icon is displayed.
    expect(find.byIcon(Icons.person), findsOneWidget);
  });
}