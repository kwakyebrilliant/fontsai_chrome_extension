import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    surface: Color.fromRGBO(255, 255, 255, 1),
    primaryContainer: Color.fromRGBO(247, 247, 250, 1),
    secondaryContainer: Color.fromRGBO(233, 233, 233, 1),
    tertiaryContainer: Color.fromRGBO(247, 247, 255, 1),
    primary: Color.fromRGBO(0, 0, 0, 1),
    secondary: Color.fromRGBO(233, 233, 240, 1),
    tertiary: Color.fromRGBO(233, 233, 233, 1),
    inversePrimary: Color.fromRGBO(0, 0, 0, 1),
  ),
  textTheme: ThemeData.light().textTheme.apply(
        bodyColor: const Color.fromRGBO(0, 0, 0, 1),
        displayColor: const Color.fromRGBO(0, 0, 0, 1),
      ),
);
