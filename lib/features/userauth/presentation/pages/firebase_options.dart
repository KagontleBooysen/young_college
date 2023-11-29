// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCP2EdDKoL9oe_MozfnxQmLcrtKmGM7mgM',
    appId: '1:937400269246:web:1c00eba67f733507e8a1ef',
    messagingSenderId: '937400269246',
    projectId: 'mobiledev-17903',
    authDomain: 'mobiledev-17903.firebaseapp.com',
    storageBucket: 'mobiledev-17903.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB6kMXdGGm9mPQw42HtaG7hxvHZzAWMD_4',
    appId: '1:937400269246:android:51a1323d2480a9d0e8a1ef',
    messagingSenderId: '937400269246',
    projectId: 'mobiledev-17903',
    storageBucket: 'mobiledev-17903.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBFnhsy06hn9y8dEkupzmc6DWUBOk4-bEE',
    appId: '1:937400269246:ios:d45acf7a12bf07a5e8a1ef',
    messagingSenderId: '937400269246',
    projectId: 'mobiledev-17903',
    storageBucket: 'mobiledev-17903.appspot.com',
    androidClientId: '937400269246-jgn4h9bighuvhg58lo1ljrjd4hu9q3a1.apps.googleusercontent.com',
    iosClientId: '937400269246-tq0ekusp7cjh10il0go292fq1av5j9j6.apps.googleusercontent.com',
    iosBundleId: 'com.example.youngCollege',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBFnhsy06hn9y8dEkupzmc6DWUBOk4-bEE',
    appId: '1:937400269246:ios:c25ec4abef83c315e8a1ef',
    messagingSenderId: '937400269246',
    projectId: 'mobiledev-17903',
    storageBucket: 'mobiledev-17903.appspot.com',
    androidClientId: '937400269246-jgn4h9bighuvhg58lo1ljrjd4hu9q3a1.apps.googleusercontent.com',
    iosClientId: '937400269246-rafs3nd8tesqqm9ilu2clp4niutf8vih.apps.googleusercontent.com',
    iosBundleId: 'com.example.youngCollege.RunnerTests',
  );
}
