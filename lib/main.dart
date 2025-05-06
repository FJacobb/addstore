import 'package:addstore/count/theme_data.dart';
import 'package:addstore/provider/theme_provider.dart';
import 'package:addstore/screen/btm_nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((
    _,
  ) {
    runApp(const MyApp());
  });
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeProvider themeProvider = ThemeProvider();

  // This widget is the root of your application.
  void getCurrentTheme() async {
    await themeProvider.themePref.getThemePref();
  }

  @override
  @override
  void initState() {
    // TODO: implement initState
    getCurrentTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) {
            return themeProvider;
          },
        ),
      ],
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: Style.themeData(themeProvider.getDarkTheme, context),
            home: BtmNav(),
          );
        },
      ),
    );
  }
}
