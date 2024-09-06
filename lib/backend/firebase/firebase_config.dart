import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA-VUgJNfk6ggD-ODcDGhV4GOH4nTnN_js",
            authDomain: "horta-4c3d2.firebaseapp.com",
            projectId: "horta-4c3d2",
            storageBucket: "horta-4c3d2.appspot.com",
            messagingSenderId: "118256771364",
            appId: "1:118256771364:web:cc5cd701ce6e603b5253b1"));
  } else {
    await Firebase.initializeApp();
  }
}
