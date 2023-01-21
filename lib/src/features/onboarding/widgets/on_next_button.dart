import 'package:flutter/material.dart';
import 'package:food_delivery/src/features/auth/sigup/screen/signup_screen.dart';

import '../../../core/constants/const.dart';

class OnNextButton extends StatelessWidget {
  const OnNextButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onNextClick(context),
      style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.colorOnboardingButtonBg,
          fixedSize: Size(MediaQuery.of(context).size.width - 100, 60),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          textStyle:
              const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
      child: const Text(
        AppString.buttonStart,
        style: TextStyle(
            fontSize: AppDimensions.buttonFontSize,
            color: AppColors.textColorButtonStart,
            fontWeight: FontWeight.bold),
      ),
    );
  }

  void onNextClick(BuildContext context) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const SignUpScreen()));
  }
}
