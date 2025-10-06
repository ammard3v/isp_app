import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: const Color(0xFFF5F6FA),
  colorScheme: const ColorScheme.light(
    primary: Color(0XFF2D3194),
    secondary: Color(0xFF7986CB),
    onPrimary: Colors.white,
    surface: Colors.white,
    onSurface: Colors.black,
    onSecondary: Colors.white,
  ),
  cardColor: Colors.white,
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0XFF2D3194),
    foregroundColor: Colors.white,
  ),
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: const Color(0xFF121212),
  colorScheme: const ColorScheme.dark(
    primary: Color(0xFF7986CB),
    secondary: Color(0XFF2D3194),
    onPrimary: Colors.black,
    surface: Color(0xFF1E1E1E),
    onSurface: Colors.white,
    onSecondary: Colors.black,
  ),
  cardColor: const Color(0xFF1E1E1E),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF1E1E1E),
    foregroundColor: Colors.white,
  ),
);
