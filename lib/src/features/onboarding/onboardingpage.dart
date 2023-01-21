import 'package:flutter/material.dart';
import 'package:food_delivery/src/core/constants/const.dart';

import 'widgets/logo_onboarding.dart';

class OnBoardingPage extends StatefulWidget {
  final dynamic image;
  final String title;

  const OnBoardingPage({
    Key? key,
    this.image,
    required this.title,
  }) : super(key: key);
  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 36,
                  left: 192,
                  right: 62,
                ),
                child: Text(
                  AppString.skip.toUpperCase(),
                  style: const TextStyle(
                    fontFamily: AppFonts.fontTextSkip,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w800,
                    fontSize: AppDimensions.skipSize,
                    color: Color.fromRGBO(255, 255, 255, 0.6),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const LogoOnboarding(),
          const SizedBox(
            height: 15,
          ),
          Text(
            widget.title,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: AppFonts.fontOnBoardingScreen,
              fontSize: AppDimensions.textSize,
              fontWeight: FontWeight.w100,
            ),
            textAlign: TextAlign.center,
          ),
          widget.image is String
              ? Image.asset(
                  widget.image,
                  width: AppDimensions.imageOnboardWidth,
                  height: AppDimensions.imageOnboardHeight,
                  fit: BoxFit.cover,
                )
              : Icon(
                  widget.image as IconData,
                  color: Colors.white,
                  size: 150,
                ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
