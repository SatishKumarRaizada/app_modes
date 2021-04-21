import 'package:app_modes/about/about_app.dart';
import 'package:app_modes/home/app_modes.dart';
import 'package:app_modes/settings/app_setting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTabs extends StatefulWidget {
  const AppTabs({Key key}) : super(key: key);
  @override
  _AppTabsState createState() => _AppTabsState();
}

class _AppTabsState extends State<AppTabs> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    AboutApp(),
    SettingPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        elevation: 0.0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.house_alt,
              size: 25,
            ),
            label: '',
            activeIcon: Icon(
              CupertinoIcons.house_alt_fill,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.info_circle,
              size: 25,
            ),
            label: '',
            activeIcon: Icon(
              CupertinoIcons.info_circle_fill,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.square_grid_2x2,
              size: 25,
            ),
            label: '',
            activeIcon: Icon(
              CupertinoIcons.square_grid_2x2_fill,
              size: 30,
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber,
        onTap: _onItemTapped,
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
