import 'package:flutter/material.dart';
import 'package:food_delivery/src/core/constants/const.dart';

import 'widgets/widgets.dart';

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
          const LogoOnboarding(),
          const SizedBox(
            height: 5,
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
          Expanded(
            child: widget.image is String
                ? Image.asset(
                    widget.image,
                    width: AppDimensions.imageOnboardWidth,
                    height: AppDimensions.imageOnboardHeight,
                    fit: BoxFit.cover,
                  )
                : Icon(
                    widget.image as IconData,
                    color: Colors.white,
                    size: AppDimensions.iconSizeOnBoarding,
                  ),
          ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}