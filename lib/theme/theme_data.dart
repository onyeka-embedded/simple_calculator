import 'package:flutter/material.dart';

class Themes {
   static final light = ThemeData(
      // primarySwatch: Colors.blue,
      primaryColor: Colors.white,
      brightness: Brightness.light,
      backgroundColor: Colors.white,
      scaffoldBackgroundColor: Colors.white);

  static final dark = ThemeData(
      // primarySwatch: Colors.blue,
      primaryColor: Colors.black,
      brightness: Brightness.dark,
      backgroundColor: Colors.black,
      scaffoldBackgroundColor: Colors.black);
}
