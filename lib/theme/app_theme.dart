import 'package:flutter/material.dart';

ThemeData darkTheme() {
  return ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.grey[700],
    fontFamily: 'OpenSans',
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: Colors.white,
    ),
    textTheme: TextTheme(
      bodyText2: TextStyle(
        fontSize: 18,
        color: Colors.white,
        fontFamily: 'OpenSans',
      ),
    ),
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.white,
      //textTheme: ButtonTextTheme.accent,
      splashColor: Colors.white,
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        primary: Colors.white,
        padding: EdgeInsets.all(20.0),
        elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          side: BorderSide.none,
        ),
      ),
    ),
    buttonColor: Colors.white,
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: Colors.white,
        backgroundColor: Colors.grey[600],
        elevation: 2.0,
        textStyle: TextStyle(
          fontSize: 18,
          fontFamily: 'OpenSans',
          color: Colors.white,
        ),
      ),
    ),
    cardTheme: CardTheme(
      color: Colors.grey[900],
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.black26,
      elevation: 0.0,
      iconTheme: IconThemeData(
        color: Colors.blue,
      ),
      textTheme: TextTheme(
        headline6: TextStyle(
          fontFamily: 'OpenSans',
          color: Colors.white,
          fontSize: 22,
        ),
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      elevation: 2.0,
      selectedIconTheme: IconThemeData(
        color: Colors.white,
      ),
      unselectedIconTheme: IconThemeData(
        color: Colors.grey[400],
      ),
    ),
  );
}

ThemeData lightTheme() {
  return ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    fontFamily: 'OpenSans',
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: Colors.white,
        backgroundColor: Colors.blue,
        elevation: 0.0,
        textStyle: TextStyle(
          fontSize: 18,
          fontFamily: 'OpenSans',
          color: Colors.black,
        ),
      ),
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: Colors.blue,
    ),
    textTheme: TextTheme(
      bodyText2: TextStyle(
        fontSize: 18,
        color: Colors.black,
        fontFamily: 'OpenSans',
      ),
    ),
    iconTheme: IconThemeData(
      color: Colors.blue,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0.0,
      iconTheme: IconThemeData(
        color: Colors.blue,
      ),
      textTheme: TextTheme(
        headline6: TextStyle(
          fontFamily: 'OpenSans',
          color: Colors.black,
          fontSize: 22,
        ),
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      elevation: 2.0,
      selectedIconTheme: IconThemeData(
        color: Colors.blue,
      ),
      unselectedIconTheme: IconThemeData(
        color: Colors.grey[400],
      ),
    ),
  );
}
