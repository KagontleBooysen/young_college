import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:young_college/features/userauth/presentation/pages/crud.dart';


void main() {
  testWidgets('checking the text of our title...', (WidgetTester tester) async {
  await tester.pumpWidget(MaterialApp(home: MyApp()));
  await tester.pump();

  expect(find.text("YoungandCapable"), findsOneWidget); 
  });

  testWidgets('checking the labeltext name...', (WidgetTester tester) async {
  await tester.pumpWidget(MaterialApp(home: MyApp()));
  await tester.pump();

  expect(find.text("Name"), findsOneWidget); 
  });


  testWidgets('checking the text student id...', (WidgetTester tester) async {
  await tester.pumpWidget(MaterialApp(home: MyApp()));
  await tester.pump();

  expect(find.text("Student ID"), findsOneWidget); 
  });


 testWidgets('checking the text study Program id...', (WidgetTester tester) async {
  await tester.pumpWidget(MaterialApp(home: MyApp()));
  await tester.pump();

  expect(find.text("Study Program ID"), findsOneWidget); 
  }); 


  testWidgets('checking the text GPA...', (WidgetTester tester) async {
  await tester.pumpWidget(MaterialApp(home: MyApp()));
  await tester.pump();

  expect(find.text("GPA"), findsOneWidget); 
  });  

  testWidgets('checking the text create...', (WidgetTester tester) async {
  await tester.pumpWidget(MaterialApp(home: MyApp()));
  await tester.pump();

  expect(find.text("Create"), findsOneWidget); 
  });  

  testWidgets('checking the text Read...', (WidgetTester tester) async {
  await tester.pumpWidget(MaterialApp(home: MyApp()));
  await tester.pump();

  expect(find.text("Read"), findsOneWidget); 
  });  

  testWidgets('checking the text update...', (WidgetTester tester) async {
  await tester.pumpWidget(MaterialApp(home: MyApp()));
  await tester.pump();

  expect(find.text("Update"), findsOneWidget); 
  });  

testWidgets('checking the text delete...', (WidgetTester tester) async {
  await tester.pumpWidget(MaterialApp(home: MyApp()));
  await tester.pump();

  expect(find.text("Delete"), findsOneWidget); 
  });  


}
