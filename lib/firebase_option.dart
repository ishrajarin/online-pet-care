
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;


class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
            'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
      apiKey: 'AIzaSyCZeC2wskHvIE7Yx92VfgRxVcYGJ_50x2k',
      appId: '1:292284945443:android:3e19c06e18ad8ee5310d96',
      messagingSenderId: '292284945443',
      projectId: 'pet-care-e2189',
      storageBucket: 'pet-care-e2189.firebasestorage.app',
      databaseURL:
      'https://pet-care-e2189-default-rtdb.firebaseio.com/');

  static const FirebaseOptions ios = FirebaseOptions(
      apiKey: 'AIzaSyCZeC2wskHvIE7Yx92VfgRxVcYGJ_50x2k',
      appId: '1:292284945443:android:3e19c06e18ad8ee5310d96',
      messagingSenderId: '292284945443',
      projectId: 'pet-care-e2189',
      storageBucket: 'pet-care-e2189.firebasestorage.app ',
      iosBundleId: 'com.pet.vet_app',
      databaseURL:
      'https://pet-care-e2189-default-rtdb.firebaseio.com/');
}