import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:young_college/features/userauth/presentation/pages/activity_request2.dart';

void main() {
  testWidgets('checking the text of our title...', (WidgetTester tester) async {
  await tester.pumpWidget(MaterialApp(home: RequestActivity2()));
  await tester.pump();

  expect(find.text("RequestActivity2"), findsOneWidget); 
  });


testWidgets('checking the text class name...', (WidgetTester tester) async {
  await tester.pumpWidget(MaterialApp(home: RequestActivity2()));
  await tester.pump();

  expect(find.text("Class Name"), findsOneWidget); 
  });


  testWidgets('checking the requested created date...', (WidgetTester tester) async {
  await tester.pumpWidget(MaterialApp(home: RequestActivity2()));
  await tester.pump();

  expect(find.text("Requested Created Date"), findsOneWidget); 
  });


testWidgets('checking the requested time...', (WidgetTester tester) async {
  await tester.pumpWidget(MaterialApp(home: RequestActivity2()));
  await tester.pump();

  expect(find.text("Requested Time"), findsOneWidget); 
  });


  testWidgets('checking the requested class date...', (WidgetTester tester) async {
  await tester.pumpWidget(MaterialApp(home: RequestActivity2()));
  await tester.pump();

  expect(find.text("Requested Class Date"), findsOneWidget); 
  });


  testWidgets('checking the text add a video meeting link...', (WidgetTester tester) async {
  await tester.pumpWidget(MaterialApp(home: RequestActivity2()));
  await tester.pump();

  expect(find.text("Please Add a Video Meeting Link"), findsOneWidget); 
  });


   testWidgets('checking the text link...', (WidgetTester tester) async {
  await tester.pumpWidget(MaterialApp(home: RequestActivity2()));
  await tester.pump();

  expect(find.text("Link"), findsOneWidget); 
  });


  testWidgets('checking the button book...', (WidgetTester tester) async {
  await tester.pumpWidget(MaterialApp(home: RequestActivity2()));
  await tester.pump();

  expect(find.text("Book"), findsOneWidget); 
  });

}