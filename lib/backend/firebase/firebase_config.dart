import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBP9yqfB4_YbIt4QlLPjT-LYKdXtj9rekI",
            authDomain: "playground-6n823p.firebaseapp.com",
            projectId: "playground-6n823p",
            storageBucket: "playground-6n823p.appspot.com",
            messagingSenderId: "26780126898",
            appId: "1:26780126898:web:e974cab97330ecace1c3ab"));
  } else {
    await Firebase.initializeApp();
  }
}
