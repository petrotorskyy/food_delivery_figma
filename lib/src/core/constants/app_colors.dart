import 'package:flutter/material.dart';

abstract class AppColors {
  static const Color mainColor = Color(0xFFF8774A);
  //Splash Screen
  static const Color textLogoColor = Color(0xFFDA7200);

  //Onboarding
  static const Color onBoardingBg = Color(0xFFFF4B3A);
  static const Color textColorButtonStart = Color(0xFFFF460A);
  static const Color colorOnboardingButtonBg = Color(0xFFFFFFFF);
  static const Color onBoardingScrollingDotsActive = Color(0xFFFFDFD4);
  static const Color onBoardingScrollingDotsInActive = Color(0xFFFF855D);
  static const Color textSkipColor = Color.fromRGBO(255, 255, 255, 0.6);
  static const Color textSkipShadow = Color.fromRGBO(0, 0, 0, 0.25);

  // BottomNavigationBar
  static const Color bottomNavigBarSelectedColor = Color(0xffFF6838);
  static const Color bottomNavigBarUnSelectedColor = Color(0xff000000);
  static const Color bottomNavigBarTextColor = Color(0xff000000);
  static const Color bottomNavigBarIconColor = Color(0xff000000);

  //SignIn Screen

  static const Color signInScreenBg = Color(0xFFF2F2F2);
  static const Color signInHeaderColor = Color(0xffffffff);
  static const Color loginButtonBg = Color(0xFFF8774A);
  static const Color textFieldColor = Color(0xFFA0A0A0);
  static const Color colorIndicatorSignIn = Color(0xFFFa4a0c);
  static const Color loginTextColor = Color(0x00000000);
  static const Color forgotPasswordTextColor = Color(0xfffa4a0c);

  //SignUp

  static const Color buttonIconColor = Color(0xffffffff);
  static const Color buttonTextSignUpColor = Color(0xffffffff);
  static const Color signUpButtonBg = Color(0xFFF8774A);
  static const Color alreadyMemberTextColor = Color(0xffB3B3B3);

  //Forgot Password Screen
  static const Color colorGrey = Color(0xffB2B2B2);
  static const Color colorArrowRight = mainColor;
}
