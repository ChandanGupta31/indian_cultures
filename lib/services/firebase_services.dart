import 'package:firebase_core/firebase_core.dart';

import 'firebase_options.dart';

class FirebaseServices{

  static void initialize() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }



}