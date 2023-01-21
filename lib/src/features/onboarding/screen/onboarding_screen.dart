import 'package:flutter/material.dart';

import '../../../core/constants/const.dart';
import '../onboardingpage.dart';
import '../widgets/widgets.dart';

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
            colors: [Color(0x00ff4B3A), Color(0xffFF470B)],
          ),
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
                  index == (widget.titles.length - 1)
                      ? onLastPage = false
                      : onLastPage = true;
                });
              },
            ),
            DotOrButtonVisibility(
                onLastPage: onLastPage,
                pageController: pageController,
                widget: widget),
          ],
        ),
      ),
    );
  }
}
