import 'dart:async';

import 'package:flutter/material.dart';

import '../../../core/constants/const.dart';
import '../onboarding_page.dart';
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
  PageController pageController = PageController(initialPage: 0);
  bool onLastPage = true;

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  Future<bool> initializeController() {
    Completer<bool> completer = Completer<bool>();

    /// Callback called after widget has been fully built
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      completer.complete(true);
    });

    return completer.future;
  } // /initializeController()

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: AppColors.onBoardingBg,
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.topCenter,
              colors: [
                Color(0x00ff4B3A),
                AppColors.onBoardingBg,
                // Color(0xffFF470B),
                //  Color(0x00ff4B3A),
                //Color(0xffFF470B),
              ],
            ),
          ),
          child: Column(
            children: [
              FutureBuilder(
                future: initializeController(),
                builder: (BuildContext context, AsyncSnapshot<void> snap) {
                  if (!snap.hasData) {
                    return const Text('Error pageController');
                  }

                  return ButtonSkip(
                      pageController: pageController, widget: widget);
                },
              ),
              Expanded(
                child: PageView.builder(
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
              ),
              DotOrButtonVisibility(
                  onLastPage: onLastPage,
                  pageController: pageController,
                  widget: widget),
            ],
          ),
        ));
  }
}
