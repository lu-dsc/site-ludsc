import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Light/Primary Theme
ThemeData lightThemeData(BuildContext context) {
  return ThemeData(
    fontFamily: 'SanFranciscoText',
    appBarTheme: const AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
    ),
    // primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: Colors.white,
    backgroundColor: Colors.white,
    brightness: Brightness.light,
    iconTheme: const IconThemeData(color: Colors.black),
    textTheme: const TextTheme(
      bodyText1: TextStyle(color: Colors.black),
      headline2: TextStyle(color: Colors.black),
      headline3: TextStyle(color: Colors.black),
      headline5: TextStyle(color: Colors.black),
      headline6: TextStyle(color: Colors.black),
    ),
    dividerColor: Colors.black,
  );
}

// Dark Theme
ThemeData darkThemeData(BuildContext context) {
  return ThemeData(
    fontFamily: 'SanFranciscoText',
    appBarTheme: const AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle.light,
    ),
    // primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: const Color(0xFF111111),
    backgroundColor: const Color(0xFF111111),
    brightness: Brightness.dark,
    iconTheme: const IconThemeData(color: Colors.white),
    textTheme: const TextTheme(
      bodyText1: TextStyle(color: Colors.white),
      headline2: TextStyle(color: Colors.white),
      headline3: TextStyle(color: Colors.white),
      headline5: TextStyle(color: Colors.white),
      headline6: TextStyle(color: Colors.white),
    ),
    dividerColor: Colors.white,
  );
}
