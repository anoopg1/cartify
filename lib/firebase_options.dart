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
    apiKey: 'AIzaSyA-BNWaNiy2a2jgzbUuIdzNBuiC_jrFDxU',
    appId: '1:784983829641:web:8cfb1ac4a1e35e3858ea58',
    messagingSenderId: '784983829641',
    projectId: 'cartify-46fd9',
    authDomain: 'cartify-46fd9.firebaseapp.com',
    storageBucket: 'cartify-46fd9.appspot.com',
    measurementId: 'G-2TQ6WE3BL5',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBgrop7ex2L3rxC-ZKUG-5q0VZKXEkqxCA',
    appId: '1:784983829641:android:7f472e30973ff9f758ea58',
    messagingSenderId: '784983829641',
    projectId: 'cartify-46fd9',
    storageBucket: 'cartify-46fd9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAO6HFV_WBkSVZqhC1xeDkyfRTGYhRPeaA',
    appId: '1:784983829641:ios:e7134e69ff1c3d6158ea58',
    messagingSenderId: '784983829641',
    projectId: 'cartify-46fd9',
    storageBucket: 'cartify-46fd9.appspot.com',
    iosBundleId: 'com.example.cartify',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAO6HFV_WBkSVZqhC1xeDkyfRTGYhRPeaA',
    appId: '1:784983829641:ios:38cfc8f3d14f3d6a58ea58',
    messagingSenderId: '784983829641',
    projectId: 'cartify-46fd9',
    storageBucket: 'cartify-46fd9.appspot.com',
    iosBundleId: 'com.example.cartify.RunnerTests',
  );
}
