// IMPORTANT: This is a placeholder file.
// Replace it by running:
//   dart pub global activate flutterfire_cli
//   flutterfire configure
//
// That command generates the correct values for your Firebase project.
// Get the values from: Firebase Console → Project Settings → Your apps → Android

import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart' show defaultTargetPlatform, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions not configured for ${defaultTargetPlatform.name}.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBdhcr5QtEfgRb0I4EOdb7HxTXl7LCZrcY',
    appId: '1:90640276065:android:09082e05201633e827a820',
    messagingSenderId: '90640276065',
    projectId: 'superprice-52d28',
    storageBucket: 'superprice-52d28.firebasestorage.app',
  );
}
