import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:young_college/features/userauth/presentation/pages/login_page.dart';
import 'package:young_college/features/userauth/presentation/widgets/form_container_widget.dart';



void main() {
  testWidgets('Login page widget test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(
      home: LoginPage(), 
    ));

    // Verify the presence of key elements in the widget tree.
    expect(find.text("Login"), findsOneWidget);
    expect(find.byKey(Key("login1")), findsOneWidget);
    expect(find.byType(FormContainerWidget), findsNWidgets(2)); 

    // For example, test the text style, padding, etc.

    //Test if the email FormContainerWidget has the correct hintText
    expect(find.widgetWithText(FormContainerWidget, "Email"), findsOneWidget);

    // Test if the password FormContainerWidget is a password field
    expect(
      tester.widget<FormContainerWidget>(
        find.widgetWithText(FormContainerWidget, "Password"),
      ).isPasswordField,
      true,
    );
  });
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Login",
                key: Key("login1"),
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              FormContainerWidget(
                controller: TextEditingController(),
                hintText: "Email",
                isPasswordField: false,
              ),
              SizedBox(height: 10),
              FormContainerWidget(
                controller: TextEditingController(),
                hintText: "Password",
                isPasswordField: true,
              ),
              SizedBox(height: 30),
              // Add other widgets as needed
            ],
          ),
        ),
      ),
    );
  }
}