// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../constants/const.dart';

class ButtonWithOutIcon extends StatelessWidget {
  final VoidCallback onPress;

  final String text;
  final Color textColor;
  final Color buttonColor;
  final double width;
  final double height;
  //final EdgeInsetsGeometry? padding;

  const ButtonWithOutIcon({
    Key? key,
    required this.onPress,
    required this.text,
    required this.textColor,
    required this.buttonColor,
    required this.width,
    required this.height,
    //this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onPress(),
      style: ElevatedButton.styleFrom(
        alignment: Alignment.centerLeft,
        backgroundColor: buttonColor,
        fixedSize: Size(width, height), //const Size(314, 63),
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(AppDimensions.buttonBorderCircular30),
        ),
        //padding: const EdgeInsets.symmetric(horizontal: 130),
        //padding: padding,
        textStyle: const TextStyle(
          fontFamily: AppFonts.fontTextButtonOnboarding,
          fontSize: 30,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
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
