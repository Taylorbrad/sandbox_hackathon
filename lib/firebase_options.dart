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
    apiKey: 'AIzaSyAqYO3NdcIHerXHMB6tAY7qFL6VsPzio94',
    appId: '1:563143455843:web:f673485dce5c1609f67456',
    messagingSenderId: '563143455843',
    projectId: 'maintenancemaster-84c0d',
    authDomain: 'maintenancemaster-84c0d.firebaseapp.com',
    databaseURL: 'https://maintenancemaster-84c0d-default-rtdb.firebaseio.com',
    storageBucket: 'maintenancemaster-84c0d.appspot.com',
    measurementId: 'G-913HW70NNX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDvLFIP6E3UJyJvT6GEWgA_U5U3zIrzK98',
    appId: '1:563143455843:android:8f3aeb8f4c76fc82f67456',
    messagingSenderId: '563143455843',
    projectId: 'maintenancemaster-84c0d',
    databaseURL: 'https://maintenancemaster-84c0d-default-rtdb.firebaseio.com',
    storageBucket: 'maintenancemaster-84c0d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC1d0DR3cIbxtY5ZCq6zz8OudCKMpYxg6U',
    appId: '1:563143455843:ios:a5b68b5c809f2329f67456',
    messagingSenderId: '563143455843',
    projectId: 'maintenancemaster-84c0d',
    databaseURL: 'https://maintenancemaster-84c0d-default-rtdb.firebaseio.com',
    storageBucket: 'maintenancemaster-84c0d.appspot.com',
    iosClientId: '563143455843-tls85sm5sijocd1fugh3k987i2ln808t.apps.googleusercontent.com',
    iosBundleId: 'com.example.sandboxHackathon',
  );
}
