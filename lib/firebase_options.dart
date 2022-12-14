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
    apiKey: 'AIzaSyDaUiz-iTNZKmweGmYS7xSbpSAHgPEi7lA',
    appId: '1:11063200747:web:633344645bbe4a1e27e7ae',
    messagingSenderId: '11063200747',
    projectId: 'calendario-6e15f',
    authDomain: 'calendario-6e15f.firebaseapp.com',
    storageBucket: 'calendario-6e15f.appspot.com',
    measurementId: 'G-EZX22P1Y3Q',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAKKhWMk6O84n7gyzrGfy4aItirIKGCqLU',
    appId: '1:11063200747:android:f0c9f4f925b67ac127e7ae',
    messagingSenderId: '11063200747',
    projectId: 'calendario-6e15f',
    storageBucket: 'calendario-6e15f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC_kuIHlqyMcSABFUmNqvnz-LdQ4H3lp0o',
    appId: '1:11063200747:ios:e497172a7b43659427e7ae',
    messagingSenderId: '11063200747',
    projectId: 'calendario-6e15f',
    storageBucket: 'calendario-6e15f.appspot.com',
    iosClientId: '11063200747-dbfb3ceifdejmfj4qbcrgs2jca7j2vct.apps.googleusercontent.com',
    iosBundleId: 'com.example.calendarAppAvanzada',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC_kuIHlqyMcSABFUmNqvnz-LdQ4H3lp0o',
    appId: '1:11063200747:ios:e497172a7b43659427e7ae',
    messagingSenderId: '11063200747',
    projectId: 'calendario-6e15f',
    storageBucket: 'calendario-6e15f.appspot.com',
    iosClientId: '11063200747-dbfb3ceifdejmfj4qbcrgs2jca7j2vct.apps.googleusercontent.com',
    iosBundleId: 'com.example.calendarAppAvanzada',
  );
}
