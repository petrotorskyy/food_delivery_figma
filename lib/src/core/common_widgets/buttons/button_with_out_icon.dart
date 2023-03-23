import 'package:flutter/material.dart';

import '../../constants/const.dart';

class ButtonWithOutIcon extends StatelessWidget {
  final VoidCallback onPress;

  final String text;
  final Color textColor;
  final Color buttonColor;
  const ButtonWithOutIcon({
    super.key,
    required this.onPress,
    required this.text,
    required this.textColor,
    required this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onPress(),
      style: ElevatedButton.styleFrom(
        alignment: Alignment.centerLeft,
        backgroundColor: buttonColor,
        fixedSize: const Size(314, 63),
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(AppDimensions.buttonBorderCircular30),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 130),
        textStyle: const TextStyle(
          fontFamily: AppFonts.fontTextButtonOnboarding,
          fontSize: 30,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
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
