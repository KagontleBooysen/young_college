import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:young_college/features/userauth/presentation/pages/home_page.dart';

void main() {
  testWidgets('checking the text of our welcome message...', (WidgetTester tester) async {
  await tester.pumpWidget(MaterialApp(home: HomePage()));
  await tester.pump();

  expect(find.text("Welcome Home buddy!"), findsOneWidget); 
    // TODO: Implement test
  });


testWidgets('checking the text of our sign out...', (WidgetTester tester) async {
  await tester.pumpWidget(MaterialApp(home: HomePage()));
  await tester.pump();

  expect(find.text("Sign out"), findsOneWidget); 
    // TODO: Implement test
  });

 testWidgets('checking the text of our HomePage...', (WidgetTester tester) async {
  await tester.pumpWidget(MaterialApp(home: HomePage()));
  await tester.pump();

  expect(find.text("HomePage"), findsOneWidget); 
    // TODO: Implement test
  }); 

}