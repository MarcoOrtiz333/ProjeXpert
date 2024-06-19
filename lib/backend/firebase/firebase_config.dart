import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDTcF44e_E7-QAIJ7cGlVS9aM28nuTYGLI",
            authDomain: "testmovil-ba318.firebaseapp.com",
            projectId: "testmovil-ba318",
            storageBucket: "testmovil-ba318.appspot.com",
            messagingSenderId: "1045800388265",
            appId: "1:1045800388265:web:e8412284ef95430adacbb8"));
  } else {
    await Firebase.initializeApp();
  }
}
