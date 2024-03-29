import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/const.dart';

class ButtonSocial extends StatelessWidget {
  final VoidCallback onPress;
  final String icon;
  final String text;
  final Color textColor;
  final Color buttonColor;
  const ButtonSocial({
    super.key,
    required this.onPress,
    required this.icon,
    required this.text,
    required this.textColor,
    required this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onPress(),
      style: ElevatedButton.styleFrom(
        // alignment: Alignment.centerLeft,
        backgroundColor: buttonColor,
        fixedSize: const Size(314, 63),
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(AppDimensions.buttonBorderCircular30),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        // padding: const EdgeInsets.symmetric(horizontal: 100),
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
            height: 30,
            width: 30,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: AppDimensions.textLocateMeButton,
              color: textColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
