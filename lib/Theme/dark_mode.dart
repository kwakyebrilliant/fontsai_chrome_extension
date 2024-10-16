import 'package:flutter/material.dart';

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    surface: Color.fromRGBO(0, 0, 0, 1),
    primaryContainer: Color.fromRGBO(26, 26, 26, 1),
    secondaryContainer: Color.fromRGBO(43, 43, 43, 1),
    tertiaryContainer: Color.fromRGBO(26, 26, 26, 1),
    primary: Color.fromRGBO(255, 255, 255, 1),
    secondary: Color.fromRGBO(43, 43, 43, 1),
    tertiary: Color.fromRGBO(117, 117, 117, 1),
    inversePrimary: Color.fromRGBO(255, 255, 255, 1),
  ),
  textTheme: ThemeData.dark().textTheme.apply(
        bodyColor: const Color.fromRGBO(255, 255, 255, 1),
        displayColor: const Color.fromRGBO(255, 255, 255, 1),
      ),
);
