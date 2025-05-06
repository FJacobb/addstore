import 'package:addstore/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final themestate = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: Center(
        child: SwitchListTile(
          title:
              themestate.getDarkTheme ? Text("Light Mode") : Text("Dark Mode"),
          secondary:
              themestate.getDarkTheme
                  ? Icon(Icons.light_mode_outlined)
                  : Icon(Icons.dark_mode_outlined),
          value: themestate.getDarkTheme,
          onChanged: (bool value) {
            setState(() {
              themestate.setThemeProvider = value;
            });
          },
        ),
      ),
    );
  }
}
