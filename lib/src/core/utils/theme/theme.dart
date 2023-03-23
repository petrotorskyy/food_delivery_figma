import 'package:flutter/material.dart';

import '../../constants/const.dart';

ThemeData theme() {
  return ThemeData(
    primaryColor: const Color(0xFFD7CB6E),
    primaryColorDark: const Color(0xFFAA9D39),
    primaryColorLight: const Color(0xFFFFF9CC),
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextTheme(
      headlineSmall: TextStyle(
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
      titleLarge: const TextStyle(
        fontFamily: AppFonts.fontOnBoardingScreen,
        fontWeight: FontWeight.w100,
        fontSize: AppDimensions.titleWelcomeSize,
        color: AppColors.signInHeaderColor,
      ),
      titleSmall: const TextStyle(
        fontFamily: AppFonts.fontNunito,
        fontWeight: FontWeight.w600,
        fontSize: 20,
        color: Color.fromRGBO(255, 255, 255, 0.6),
      ),
      labelSmall: const TextStyle(
        fontFamily: AppFonts.fontNunito,
        fontWeight: FontWeight.w800,
        fontSize: 18,
        color: Color.fromRGBO(255, 255, 255, 0.6),
      ),
      displayMedium: const TextStyle(
        fontFamily: AppFonts.fontPopins,
        fontWeight: FontWeight.w600,
        fontSize: AppDimensions.loginSize,
        color: AppColors.loginTextColor,
      ),
      displaySmall: const TextStyle(
        fontFamily: AppFonts.fontPopins,
        fontSize: AppDimensions.forgotPasswordSize,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
