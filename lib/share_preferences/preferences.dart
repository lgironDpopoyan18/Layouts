import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static late SharedPreferences _prefs;

  static String _name = '';
  static bool _isDark = false;
  static int _gender = 1;

  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static String get name {
    return _prefs.getString('name') ?? _name;
  }

  static set name(String value) {
    _name = value;
    _prefs.setString('name', value);
  }

  static bool get isDark {
    return _prefs.getBool('dark') ?? _isDark;
  }

  static set isDark(bool value) {
    _isDark = value;
    _prefs.setBool('dark', value);
  }

  static int get gender {
    return _prefs.getInt('gender') ?? _gender;
  }

  static set gender(int value) {
    _gender = value;
    _prefs.setInt('gender', value);
  }
}
