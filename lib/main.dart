import 'package:flutter/material.dart';
import 'package:indian_cultures/services/firebase_services.dart';
import 'package:indian_cultures/services/routes.dart';
import 'package:indian_cultures/services/shared_preference.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FirebaseServices.initialize();

  var initial = await AppManager.isAppStarted() ? '/' : '/welcome';


  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,

    initialRoute: initial,
    routes: routes,

    theme: ThemeData(
      primaryColor: Color(0xFF4CBB17),
      fontFamily: 'Poppins',
    ),

  ));
}

