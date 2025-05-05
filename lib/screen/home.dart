import 'package:addstore/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final themestate = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: Center(
        child: SwitchListTile(
          value: themestate.getDarkTheme,
          onChanged: (bool value) {
            themestate.setThemeProvider = value;
          },
        ),
      ),
    );
  }
}
