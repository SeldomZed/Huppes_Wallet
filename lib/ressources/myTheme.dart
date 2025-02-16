import 'package:flutter/material.dart';

class Mytheme {
  static Color nodaDark = const Color(0xFF000737);
  static Color nodaLight = const Color(0xFF0095e4);
  static Color nodaMiddle = const Color(0xFF003e8b);
  static LinearGradient nodaLinearGradient =
      const LinearGradient(colors: [Color(0xFF0095e4), Color(0xFF042241)]);

  static ColorScheme colorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: nodaMiddle,
    onPrimary: Colors.white,
    secondary: nodaLight,
    onSecondary: Colors.black,
    error: Colors.red,
    onError: Colors.white,
    surface: Colors.white,
    onSurface: nodaMiddle,
  );

//static FilledButtonThemeData filledButtonTheme = FilledButtonThemeData(style: FilledButton.styleFrom());
}
