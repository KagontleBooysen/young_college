import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:young_college/features/app/splash_screen/splash_screen.dart';
import 'package:young_college/features/user_auth/presentation/pages/home_page.dart';
import 'package:young_college/features/user_auth/presentation/pages/login_page.dart';
import 'package:young_college/features/user_auth/presentation/pages/sign_up_page.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'YoungandCapable',
      routes: {
        '/': (context) => SplashScreen(
          child: LoginPage(),
        ),
        '/login': (context) => LoginPage(),
        '/signUp': (context) => SignUpPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}