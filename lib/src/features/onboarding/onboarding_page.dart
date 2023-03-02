import 'package:flutter/material.dart';
import 'package:food_delivery/src/core/common_widgets/widgets.dart';
import 'package:food_delivery/src/core/constants/const.dart';

class OnBoardingPage extends StatelessWidget {
  final dynamic image;
  final String title;

  const OnBoardingPage({
    Key? key,
    this.image,
    required this.title,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const LogoSvg(height: 90, width: 123),
          //const LogoOnboarding(),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontFamily: AppFonts.fontOnBoardingScreen,
                fontSize: AppDimensions.textSize,
                fontWeight: FontWeight.w100,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: image is String
                ? Image.asset(
                    image,
                    width: AppDimensions.imageOnboardWidth,
                    height: AppDimensions.imageOnboardHeight,
                    fit: BoxFit.cover,
                  )
                : Icon(
                    image as IconData,
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
