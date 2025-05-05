import 'package:addstore/theme%20preferences/theme_pref.dart';
import 'package:flutter/cupertino.dart';

class ThemeProvider with ChangeNotifier {
  ThemePref themePref = ThemePref();
  bool _darkTheme = false;
  bool get getDarkTheme => _darkTheme;

  set setThemeProvider(bool stateOfTheme) {
    _darkTheme = stateOfTheme;
    themePref.setThemePref(stateOfTheme);
    notifyListeners();
  }
}
