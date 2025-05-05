import 'package:flutter/material.dart';

class Style {
  static ThemeData themeData(bool state, BuildContext context) {
    return ThemeData(
      scaffoldBackgroundColor: state ? Colors.yellow : Colors.red,
    );
  }
}
