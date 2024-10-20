import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCZrAepHlXxvomxZWGgJo3U3QfhZqxQZko",
            authDomain: "datasellingplatform.firebaseapp.com",
            projectId: "datasellingplatform",
            storageBucket: "datasellingplatform.appspot.com",
            messagingSenderId: "670109569281",
            appId: "1:670109569281:web:441eccc042e00be9724b00",
            measurementId: "G-SFGSMK3BNL"));
  } else {
    await Firebase.initializeApp();
  }
}
