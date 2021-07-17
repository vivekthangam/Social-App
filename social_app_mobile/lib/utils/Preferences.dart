import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static SharedPreferences local;

  /// Initializes the Shared Preferences and sets the info towards a global variable
  static Future init() async {
    local = await SharedPreferences.getInstance();
  }

  static String getString(String str) {
    return local.getString(str);
  }

  static void setString(String str, String value) {
    local.setString(str, value);
  }
}
