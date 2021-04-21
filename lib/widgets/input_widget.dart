import 'package:flutter/material.dart';

class AppInput extends StatelessWidget {
  const AppInput({
    Key key,
    this.hintTxt,
    this.suffixIcon,
    this.prefixIcon,
    this.change,
    this.validate,
    this.secure = false,
    this.maxLine = 1,
    this.labelTxt,
    this.onTap,
    this.readOnly = false,
    this.keyboard = TextInputType.text,
  }) : super(key: key);
  final String hintTxt;
  final String labelTxt;
  final Widget suffixIcon;
  final Widget prefixIcon;
  final Function change;
  final Function validate;
  final Function onTap;
  final bool secure;
  final int maxLine;
  final bool readOnly;
  final TextInputType keyboard;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      child: TextFormField(
        keyboardType: keyboard,
        readOnly: readOnly,
        maxLines: maxLine,
        obscureText: secure,
        onChanged: (String txt) {
          change(txt);
        },
        validator: (String txt) {
          return validate();
        },
        scrollPadding: EdgeInsets.all(10.0),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(20.0),
          hintText: hintTxt,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
