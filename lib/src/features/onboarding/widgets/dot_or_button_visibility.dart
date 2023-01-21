import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/constants/const.dart';
import '../../feature_widgets.dart';
import 'widgets.dart';

class DotOrButtonVisibility extends StatelessWidget {
  const DotOrButtonVisibility({
    Key? key,
    required this.onLastPage,
    required this.pageController,
    required this.widget,
  }) : super(key: key);

  final bool onLastPage;
  final PageController pageController;
  final OnBoardingScreen widget;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      // visible: state.currentPageCount + 1 == widget.titles.length,
      visible: onLastPage,

      replacement: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Align(
          alignment: Directionality.of(context) == TextDirection.ltr
              ? Alignment.bottomCenter
              : Alignment.bottomLeft,
          child: const OnNextButton(),
        ),
      ),

      child: Padding(
        padding: const EdgeInsets.only(bottom: 50.0),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: SmoothPageIndicator(
            controller: pageController,
            count: widget.titles.length,
            effect: const ScrollingDotsEffect(
                activeDotColor: AppColors.onBoardingScrollingDotsActive,
                dotColor: AppColors.onBoardingScrollingDotsInActive,
                dotWidth: AppDimensions.dotWidth,
                dotHeight: AppDimensions.dotWidth,
                fixedCenter: true),
          ),
        ),
      ),
    );
  }
}
