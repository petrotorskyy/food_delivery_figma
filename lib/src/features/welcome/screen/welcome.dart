import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/constants/const.dart';
import '../../feature_widgets.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    PageController pageController;
    OnBoardingScreen widget;
    double heightSp = MediaQuery.of(context).size.height;
    double widthSp = MediaQuery.of(context).size.width;
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
              Text(AppString.subTitleWelcom,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(
                height: 75,
              ),
              Text(AppString.selLocationWelcome,
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.labelSmall),
            ],
          ),
        ],
      ),
    );
  }
}
