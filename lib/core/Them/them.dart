import 'package:flutter/material.dart';

class AppThem {

  static ThemeData? light=ThemeData(
brightness: Brightness.light,
scaffoldBackgroundColor: Colors.white,
appBarTheme: AppBarTheme(
 backgroundColor: Colors.transparent,
)
  );
   static ThemeData? dart=ThemeData(
brightness: Brightness.dark,
scaffoldBackgroundColor: Colors.black,
appBarTheme: AppBarTheme(
 backgroundColor: Colors.transparent,
)
  );
}