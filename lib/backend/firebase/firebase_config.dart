import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBqvFJEDl55rnYmEDAd8Rn9oz5hUPzgkrQ",
            authDomain: "meal-planner-9746a.firebaseapp.com",
            projectId: "meal-planner-9746a",
            storageBucket: "meal-planner-9746a.appspot.com",
            messagingSenderId: "498733656459",
            appId: "1:498733656459:web:baeefd7319a8c5ff6fe78e",
            measurementId: "G-D1VPXNQ9VG"));
  } else {
    await Firebase.initializeApp();
  }
}
