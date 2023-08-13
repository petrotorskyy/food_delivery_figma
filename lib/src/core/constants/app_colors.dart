import 'package:flutter/material.dart';

abstract class AppColors {
  static const mainColor = Color(0xFFF8774A);
  //Splash Screen
  static const textLogoColor = Color(0xFFDA7200);

  //Onboarding
  static const onBoardingBg = Color(0xFFFF4B3A);
  static const textColorButtonStart = Color(0xFFFF460A);
  static const colorOnboardingButtonBg = Color(0xFFFFFFFF);
  static const onBoardingScrollingDotsActive = Color(0xFFFFDFD4);
  static const onBoardingScrollingDotsInActive = Color(0xFFFF855D);
  static const textSkipColor = Color.fromRGBO(255, 255, 255, 0.6);
  static const textSkipShadow = Color.fromRGBO(0, 0, 0, 0.25);

  // BottomNavigationBar
  static const bottomNavigBarSelectedColor = Color(0xffFF6838);
  static const bottomNavigBarUnSelectedColor = Color(0xff000000);
  static const bottomNavigBarTextColor = Color(0xff000000);
  static const bottomNavigBarIconColor = Color(0xff000000);

  //SignIn Screen

  static const signInScreenBg = Color(0xFFF2F2F2);
  static const signInHeaderColor = Color(0xffffffff);
  static const loginButtonBg = Color(0xFFF8774A);
  static const textFieldColor = Color(0xFFA0A0A0);
  static const colorIndicatorSignIn = Color(0xFFFa4a0c);
  static const loginTextColor = Color(0x00000000);
  static const forgotPasswordTextColor = Color(0xfffa4a0c);

  //SignUp

  static const buttonIconColor = Color(0xffffffff);
  static const buttonTextSignUpColor = Color(0xffffffff);
  static const signUpButtonBg = Color(0xFFF8774A);
  static const alreadyMemberTextColor = Color(0xffB3B3B3);

  //Forgot Password Screen
  static const colorGrey = Color(0xffB2B2B2);
  static const colorArrowRight = mainColor;
}
