import 'package:app_modes/tabs/app_tabs.dart';
import 'package:app_modes/theme/app_theme.dart';
import 'package:app_modes/widgets/app_store.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  static void setTheme(BuildContext context, ThemeMode newTheme) async {
    _MyAppState state = context.findAncestorStateOfType<_MyAppState>();
    state.changeTheme(newTheme);
  }

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _theme = ThemeMode.light;
  SharedPref pref = SharedPref();
  void changeTheme(ThemeMode newTheme) async {
    setState(() {
      _theme = newTheme;
    });
  }

  @override
  void initState() {
    getTheme();
    super.initState();
  }

  getTheme() async {
    if (await pref.boolRead('modes')) {
      setState(() {
        _theme = ThemeMode.dark;
      });
    } else {
      setState(() {
        _theme = ThemeMode.light;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Modes Demo',
      theme: _theme == ThemeMode.dark ? darkTheme() : lightTheme(),
      home: AppTabs(),
    );
  }
}
