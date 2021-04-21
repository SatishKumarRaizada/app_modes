import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppIconCard extends StatelessWidget {
  AppIconCard({
    Key key,
    this.btnText,
    this.ledftWidget,
    this.rightWidget,
    this.onTap,
    this.bgColor = Colors.white,
  }) : super(key: key);

  final Widget ledftWidget;
  final Widget btnText;
  final Widget rightWidget;
  final Function onTap;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final _width = size.width;
    final _height = size.height;

    return Card(
      margin: EdgeInsets.zero,
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ledftWidget,
                SizedBox(width: _width * 0.04),
                btnText,
              ],
            ),
            rightWidget,
          ],
        ),
      ),
    );
  }
}
