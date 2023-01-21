import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/constants/const.dart';
import '../onboardingpage.dart';
import '../widgets/on_next_button.dart';

class OnBoardingScreen extends StatefulWidget {
  final List<dynamic> images;
  final List<String> titles;

  const OnBoardingScreen({
    Key? key,
    required this.images,
    required this.titles,
  }) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController pageController = PageController();
  bool onLastPage = true;

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.onBoardingBg,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.center,
              colors: [Color(0xFF470B1A), Color(0xffFF470B)]),
        ),
        child: Stack(
          children: [
            PageView.builder(
              itemBuilder: (context, index) => OnBoardingPage(
                image: widget.images[index],
                title: widget.titles[index],
              ),
              controller: pageController,
              itemCount: widget.titles.length,
              onPageChanged: (int index) {
                setState(() {
                  if (index == 2) {
                    onLastPage = false;
                  } else {
                    onLastPage = true;
                  }
                });
              },
            ),
            Visibility(
              // visible: state.currentPageCount + 1 == widget.titles.length,
              visible: onLastPage,
              maintainSize: true,
              maintainAnimation: true,
              maintainState: true,
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
            ),
          ],
        ),
      ),
    );
  }
}
