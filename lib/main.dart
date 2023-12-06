import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:young_college/features/app/splash_screen/splash_screen.dart';
import 'package:young_college/features/userauth/presentation/pages/Upcoming_classes.dart';
import 'package:young_college/features/userauth/presentation/pages/edit_my_class.dart';
import 'package:young_college/features/userauth/presentation/pages/home_page.dart';
import 'package:young_college/features/userauth/presentation/pages/login_page.dart';
import 'package:young_college/features/userauth/presentation/pages/sign_up_page.dart';
import 'package:young_college/features/userauth/presentation/pages/activity_request2.dart';
import 'package:young_college/features/userauth/presentation/pages/activity_edit2.dart';
import 'package:young_college/features/userauth/presentation/pages/activity_reschedule.dart';
import 'package:young_college/features/userauth/presentation/pages/activity_available2.dart';
import 'package:young_college/features/userauth/presentation/pages/activity_classes.dart';
import 'package:young_college/features/userauth/presentation/pages/activity_link2.dart';
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
        '/edit': (context) => EditActivity2(),
        '/request': (context) => RequestActivity2(),
        '/link': (context) => LinkActivity2(),
        '/available': (context) => AvailableActivity2(),
        '/class': (context) => AvailableActivity1(),
        '/act': (context) => activityapp(),
        '/selectnow': (context) => now(),
        '/upvision': (context) => vision(),
      },
    );
  }
}