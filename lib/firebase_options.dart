// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBwDryE5rf_B1gb0PQBuULZVgvFWFsSaAs',
    appId: '1:509606485788:web:e8f8ad5bad353daa6924d9',
    messagingSenderId: '509606485788',
    projectId: 'teste1-977db',
    authDomain: 'teste1-977db.firebaseapp.com',
    storageBucket: 'teste1-977db.appspot.com',
    measurementId: 'G-KP4WRCRQ8X',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCxOuNN6be-tOuWiaR9tb_bQOkvawzxaio',
    appId: '1:509606485788:android:03bfb3fdcd63e1c26924d9',
    messagingSenderId: '509606485788',
    projectId: 'teste1-977db',
    storageBucket: 'teste1-977db.appspot.com',
  );

}