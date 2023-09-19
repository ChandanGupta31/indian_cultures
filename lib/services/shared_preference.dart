import 'package:shared_preferences/shared_preferences.dart';

class AppManager{

  static const String isAppStartedKey = 'isAppStarted';




  // Setting the App Started
  static Future<void> setAppStarted(bool isAppStarted) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(isAppStartedKey, isAppStarted);
  }

  // Retrieving The App Started
  static Future<bool> isAppStarted() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(isAppStartedKey) ?? false;
  }
}