import 'package:flutter/material.dart';
import 'package:indian_cultures/services/firebase_services.dart';
import 'package:indian_cultures/services/routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FirebaseServices.initialize();



  runApp(MaterialApp(
    initialRoute: '/splash',
    routes: routes,

    theme: ThemeData(
      primaryColor: Color(0xFF4CBB17),
      fontFamily: 'Poppins',
    ),
  ));
}

