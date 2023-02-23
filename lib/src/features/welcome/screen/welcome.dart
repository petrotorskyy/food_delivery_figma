import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/constants/const.dart';
import '../../../core/common_widgets/buttons/button.dart';
import '../../feature_widgets.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    final Widget svg;

    var text = Text(
      AppString.skip.toUpperCase(),
      style: const TextStyle(
        fontFamily: AppFonts.fontTextSkip,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w800,
        fontSize: AppDimensions.skipSize,
        color: AppColors.textSkipColor,
        shadows: [
          Shadow(
            color: AppColors.textSkipShadow,
            offset: Offset(3, 3),
            blurRadius: 15,
          ),
        ],
      ),
    );
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: AppColors.onBoardingBg,
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 60,
                  left: 192,
                  right: 62,
                ),
                child: InkWell(
                  onTap: () {
                    // pageController.jumpToPage(widget.titles.length - 1);
                  },
                  child: text,
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              svg = Padding(
                padding: const EdgeInsets.symmetric(vertical: 35),
                child: SvgPicture.asset(
                  AppSvg.logo,
                  height: 133,
                  width: 159,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(AppString.titleWelcome,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(
                height: 15,
              ),
              Text(AppString.subTitleWelcome,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(
                height: 55,
              ),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 25,
                    ),
                    child: Text(AppString.selLocationWelcome,
                        textAlign: TextAlign.left,
                        style: Theme.of(context).textTheme.labelSmall),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 25,
                    ),
                    child: Button(
                      onPress: () => locateMe(context),
                      icon: AppSvg.locateSvg,
                      text: AppString.locateMeButton,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 25,
                    ),
                    child: Button(
                      onPress: () => provideDeliveryLocation(context),
                      icon: AppSvg.provideSvg,
                      text: AppString.provideDeliveryLocationButton,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  locateMe(BuildContext context) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const SignInScreen()));
  }

  provideDeliveryLocation(BuildContext context) {}
}
