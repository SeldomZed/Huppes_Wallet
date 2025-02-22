import 'package:flutter/material.dart';

class MyTheme {
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

Widget GradientIcon(IconData icon, bool isSelected) {
  return ShaderMask(
    shaderCallback: (bounds) => LinearGradient(
      colors: isSelected
          ? [
              Color(0xffead99c),
              Color(0xFFb28942),
            ]
          : [
              Color(0xB0EAD99C),
              Color(0x99B28942),
            ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ).createShader(bounds),
    child: Icon(icon, color: Colors.white, size: 27),
  );
}
