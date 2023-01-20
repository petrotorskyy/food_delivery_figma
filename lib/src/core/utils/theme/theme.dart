import 'package:flutter/material.dart';

import '../../constants/const.dart';

ThemeData theme() {
  return ThemeData(
    primaryColor: const Color(0xFFD7CB6E),
    primaryColorDark: const Color(0xFFAA9D39),
    primaryColorLight: const Color(0xFFFFF9CC),
    scaffoldBackgroundColor: Colors.white,
    backgroundColor: const Color(0xFFFFFCE8),
    textTheme: TextTheme(
      headline5: TextStyle(
        fontWeight: FontWeight.normal,
        fontFamily: AppFonts.fontSplashScreenText,
        fontSize: AppDimensions.fontHeight,
        shadows: [
          Shadow(
              color: Colors.black.withOpacity(0.9),
              offset: const Offset(3, 3),
              blurRadius: 15),
        ],
        foreground: Paint()
          ..strokeWidth = 2
          ..color = const Color(0xFF000000)
          ..style = PaintingStyle.stroke,
      ),
    ),
  );
}
