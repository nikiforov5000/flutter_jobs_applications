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
    apiKey: 'AIzaSyDEZLKCPCDGDbaiQ3d4bYP2fZPHYMddjwg',
    appId: '1:71870073358:web:12fc6b77352c4b2bd04a5f',
    messagingSenderId: '71870073358',
    projectId: 'flutter-jobs-applications',
    authDomain: 'flutter-jobs-applications.firebaseapp.com',
    storageBucket: 'flutter-jobs-applications.appspot.com',
    measurementId: 'G-DFNQQ96XP8',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDA97zDGeJmbUWcYm6jNS86FCpqRHwKaTY',
    appId: '1:71870073358:android:fe3d4c88e93ea6e6d04a5f',
    messagingSenderId: '71870073358',
    projectId: 'flutter-jobs-applications',
    storageBucket: 'flutter-jobs-applications.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCCpe3XhtzfWsvqTq6gtBCukj-DxJAXiws',
    appId: '1:71870073358:ios:3d34f5d58f2c984ed04a5f',
    messagingSenderId: '71870073358',
    projectId: 'flutter-jobs-applications',
    storageBucket: 'flutter-jobs-applications.appspot.com',
    androidClientId: '71870073358-dnna9prucbugf75q1i2s5fclor5frmrt.apps.googleusercontent.com',
    iosClientId: '71870073358-ag1uipa0jgspgnsrsn40mbq18s5o6a8s.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterJobsApplications',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCCpe3XhtzfWsvqTq6gtBCukj-DxJAXiws',
    appId: '1:71870073358:ios:3d34f5d58f2c984ed04a5f',
    messagingSenderId: '71870073358',
    projectId: 'flutter-jobs-applications',
    storageBucket: 'flutter-jobs-applications.appspot.com',
    androidClientId: '71870073358-dnna9prucbugf75q1i2s5fclor5frmrt.apps.googleusercontent.com',
    iosClientId: '71870073358-ag1uipa0jgspgnsrsn40mbq18s5o6a8s.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterJobsApplications',
  );
}
