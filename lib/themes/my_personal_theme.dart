import 'package:flutter/material.dart';

class MyTheme {
  static const Color light = Color(0xFFEE6221);
  static const Color dark = Color(0xFFEE4721);
  static const IconThemeData iconTheme =
      IconThemeData(color: Color(0xFF3F51B5));

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
      color: light,
    ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    appBarTheme: const AppBarTheme(
      color: dark,
    ),
    textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.blueAccent)),
    scaffoldBackgroundColor: Colors.black,
  );
  static const IconThemeData iconThemeCustom = IconThemeData(
    color: Color(0xFFD13030),
    opacity: 1.0,
  );
}
