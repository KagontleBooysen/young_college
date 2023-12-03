import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:young_college/features/app/splash_screen/splash_screen.dart';
import 'package:young_college/features/userauth/presentation/pages/home_page.dart';
import 'package:young_college/features/userauth/presentation/pages/login_page.dart';
import 'package:young_college/features/userauth/presentation/pages/sign_up_page.dart';
import 'package:young_college/features/userauth/presentation/pages/activity_request2.dart';
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
          child: Login_Page(),
        ),
        '/login': (context) => Login_Page(),
        '/signUp': (context) => SignUpPage(),
        '/home': (context) => HomePage(),
        '/crud': (context) => MyApp(),
        '/request': (context) => RequestActivity2(),
      },
    );
  }
}