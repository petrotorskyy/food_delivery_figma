import 'package:flutter/material.dart';

import '../../../core/constants/const.dart';

class LogoOnboarding extends StatelessWidget {
  const LogoOnboarding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: Image.asset(
            AppPng.ellipse15,
            height: AppDimensions.ellipse15Height,
            width: AppDimensions.ellipse15Width,
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: Image.asset(
              AppPng.logo,
              height: AppDimensions.logoHeight,
              width: AppDimensions.logoWidth,
            ),
          ),
        ),
      ],
    );
  }
}
