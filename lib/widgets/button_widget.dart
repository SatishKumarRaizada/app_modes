import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    Key key,
    this.btnText,
    this.onPress,
  }) : super(key: key);
  final String btnText;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final _width = size.width;
    final _height = size.height;
    return TextButton(
      child: Text(
        btnText,
        style: TextStyle(
          fontSize: 18,
        ),
      ),
      onPressed: onPress,
      style: TextButton.styleFrom(
        minimumSize: Size(_width, _height * 0.055),
      ),
    );
  }
}
