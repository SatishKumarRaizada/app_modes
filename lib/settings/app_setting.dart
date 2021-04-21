import 'package:app_modes/widgets/app_store.dart';
import 'package:app_modes/widgets/card_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key key}) : super(key: key);
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool _lights = false;
  SharedPref prefs = SharedPref();

  @override
  void initState() {
    getMode();
    super.initState();
  }

  getMode() async {
    _lights = await prefs.boolRead('modes');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final _width = size.width;
    final _height = size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('App Settings'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: [
              AppIconCard(
                btnText: Text(
                  'Language Selected',
                ),
                ledftWidget: Icon(
                  CupertinoIcons.globe,
                ),
                rightWidget: Text(
                  'English',
                ),
              ),
              SizedBox(height: _height * 0.01),
              AppIconCard(
                btnText: Text(
                  'Dark Mode',
                ),
                ledftWidget: Icon(
                  _lights
                      ? CupertinoIcons.moon_zzz_fill
                      : CupertinoIcons.sun_max_fill,
                  size: 30,
                ),
                rightWidget: CupertinoSwitch(
                  value: _lights,
                  onChanged: (bool value) async {
                    setState(() {
                      _lights = value;
                    });
                    if (_lights) {
                      MyApp.setTheme(context, ThemeMode.dark);
                    } else {
                      MyApp.setTheme(context, ThemeMode.light);
                    }
                    await prefs.boolSave('modes', _lights);
                  },
                ),
              ),
              SizedBox(height: _height * 0.01),
              AppIconCard(
                btnText: Text('App Version'),
                ledftWidget: Icon(
                  CupertinoIcons.app_badge,
                ),
                rightWidget: Text('1.0.0'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
