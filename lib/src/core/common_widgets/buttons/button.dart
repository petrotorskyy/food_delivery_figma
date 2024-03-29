import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/const.dart';

class Button extends StatelessWidget {
  final VoidCallback onPress;
  final String icon;
  final String text;
  const Button(
      {super.key,
      required this.onPress,
      required this.icon,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onPress(),
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.colorOnboardingButtonBg,
        fixedSize: const Size(314, 70),
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(AppDimensions.buttonBorderCircular30),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        textStyle: const TextStyle(
          fontFamily: AppFonts.fontTextButtonOnboarding,
          fontSize: 30,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SvgPicture.asset(
            icon,
            height: 35,
            width: 33,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: AppDimensions.textLocateMeButton,
              color: AppColors.textColorButtonStart,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
