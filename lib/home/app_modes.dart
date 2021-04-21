import 'package:app_modes/widgets/button_widget.dart';
import 'package:app_modes/widgets/input_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final _width = size.width;
    final _height = size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('App Modes'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: [
              AppInput(
                change: (String txt) {},
                hintTxt: 'Enter work email',
                prefixIcon: Icon(
                  CupertinoIcons.envelope,
                ),
              ),
              SizedBox(height: _height * 0.01),
              AppInput(
                change: (String txt) {},
                hintTxt: 'Access code',
                prefixIcon: Icon(
                  CupertinoIcons.lock_shield,
                ),
              ),
              SizedBox(height: _height * 0.04),
              AppButton(
                btnText: 'Sign In',
                onPress: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
