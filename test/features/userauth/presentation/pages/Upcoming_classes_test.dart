import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:young_college/features/userauth/presentation/pages/Upcoming_classes.dart';


void main() {
  testWidgets('MyApp has a logo and bottom navigation bar', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(home: vision()));

    // Verify that the logo is displayed.
    expect(find.byType(Image), findsOneWidget);
    expect(find.byType(BottomNavigationBar), findsOneWidget);

    // Verify that the text elements are displayed.
    expect(find.text('No Scheduled Classes'), findsOneWidget);
    expect(find.text('YoungandCapable'), findsOneWidget);
    expect(find.text('You haven\'t requested to take a class yet... find a class and schedule a time to take it!'), findsOneWidget);
    
  });
}


