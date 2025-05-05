import 'package:shared_preferences/shared_preferences.dart';

class ThemePref {
  static const keyThemePref = "THEMEPREF";
  setThemePref(bool valueThemePref) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool(keyThemePref, valueThemePref);
  }

  Future getThemePref() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool(keyThemePref) ?? false;
  }
}
