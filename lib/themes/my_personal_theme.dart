import 'package:flutter/material.dart';

class MyTheme {
  //static const Color primary = Color(0xFF5080DE);
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      useMaterial3: true,

      appBarTheme: const AppBarTheme(
          color: Color(0xDBFF951C), titleTextStyle: TextStyle(fontSize: 25)));
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      useMaterial3: true,
      appBarTheme: const AppBarTheme(
          color: Color(0xFFEE4721), titleTextStyle: TextStyle(fontSize: 25)));
}
