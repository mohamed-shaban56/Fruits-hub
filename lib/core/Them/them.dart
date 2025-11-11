import 'package:flutter/material.dart';

class AppThem {

  static ThemeData? light=ThemeData(
    fontFamily: 'Cairo',
brightness: Brightness.light,
scaffoldBackgroundColor: Colors.white,
appBarTheme: AppBarTheme(
 backgroundColor: Colors.transparent,
)
  );
   static ThemeData? dart=ThemeData(
    fontFamily: 'Cairo',
brightness: Brightness.dark,
scaffoldBackgroundColor: Colors.black,
appBarTheme: AppBarTheme(
 backgroundColor: Colors.transparent,
)
  );
}