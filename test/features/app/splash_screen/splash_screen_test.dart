import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:young_college/features/app/splash_screen/splash_screen.dart';


void main() {
  testWidgets('Splash Screen text of our welcome message...', (WidgetTester tester) async {
    // Create a fake async environment
    await tester.runAsync(() async {
      // Build our widget
      await tester.pumpWidget(MaterialApp(home: SplashScreen()));

      // Ensure the initial splash screen is shown
      expect(find.text('Welcome To YoungandCapable'), findsOneWidget);

      // Wait for the delayed duration (3 seconds)
      await tester.pump(Duration(seconds: 3));
    });
  });
}
