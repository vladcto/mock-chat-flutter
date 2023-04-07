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
    apiKey: 'AIzaSyDoXlDerqbNa1Lf_1LYeNP0Eg6az6x51u0',
    appId: '1:443090768559:web:525856bf97c447b072fa5a',
    messagingSenderId: '443090768559',
    projectId: 'mock-chat-flutter',
    authDomain: 'mock-chat-flutter.firebaseapp.com',
    storageBucket: 'mock-chat-flutter.appspot.com',
    measurementId: 'G-RTDN5PPZX5',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDs_lCQNMlxj33lBS1c7Lo5cCwaZ5fHjwY',
    appId: '1:443090768559:android:fd13de5fdb9c85d472fa5a',
    messagingSenderId: '443090768559',
    projectId: 'mock-chat-flutter',
    storageBucket: 'mock-chat-flutter.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD7l5yvKn3jO2Jw1xjSq-miqXcz-VybNVU',
    appId: '1:443090768559:ios:87c11d38981a302372fa5a',
    messagingSenderId: '443090768559',
    projectId: 'mock-chat-flutter',
    storageBucket: 'mock-chat-flutter.appspot.com',
    iosClientId: '443090768559-ns5re26bi9np1l5v6r1d3judaqtbs3qs.apps.googleusercontent.com',
    iosBundleId: 'com.example.mockChatFlutter',
  );
}
