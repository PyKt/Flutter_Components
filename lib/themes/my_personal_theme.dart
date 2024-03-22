import 'package:flutter/material.dart';

class MyTheme {
  static const Color light = Color(0xFFEE6221);
  static const Color dark = Color(0xFFEE4721);
  static const IconThemeData iconTheme =
      IconThemeData(color: Color(0xFF3F51B5));

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    
    appBarTheme: const AppBarTheme(
      color: light,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(color: light),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10), topLeft: Radius.circular(10)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
        Radius.circular(15),
      )),
    ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    appBarTheme: const AppBarTheme(
      color: dark,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(color: dark),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
    ),
  );
  static const IconThemeData iconThemeCustom = IconThemeData(
    color: Color(0xFFD13030),
    opacity: 1.0,
  );
}
