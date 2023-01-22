import 'package:flutter/material.dart';

import '../../../core/constants/const.dart';
import '../../feature_widgets.dart';
import '../../onboarding/data/data.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();

  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const SplashScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigationToOnboarding();
  }

  void navigationToOnboarding() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => OnBoardingScreen(
              images: imageList,
              titles: titlesList,
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double heightSp = MediaQuery.of(context).size.height;
    double widthSp = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppPng.bgSplash,
            fit: BoxFit.fill,
            height: heightSp,
            width: widthSp,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Image.asset(AppPng.ellipse15),
                      Positioned(
                        left: 10,
                        top: 110,
                        child: Image.asset(AppPng.ellipse1),
                      ),
                      Positioned(
                        left: 50,
                        top: 90,
                        child: Image.asset(AppPng.logo),
                      ),
                      Positioned(
                        left: 145,
                        top: 220,
                        child: Text(
                          AppString.textSplash,
                          style: Theme.of(context).textTheme.headline5,
                        ),
                      ),
                      Positioned(
                        left: 250,
                        top: 25,
                        right: 50,
                        child: Image.asset(
                          AppPng.group2,
                          height: 100,
                          width: 100,
                        ),
                      ),
                      Positioned(
                        left: 175,
                        top: 0,
                        right: 82,
                        child: Image.asset(
                          AppPng.group1,
                          height: 70,
                          width: 50,
                        ),
                      ),
                      Positioned(
                        left: 165,
                        top: 0,
                        right: 82,
                        child: Image.asset(
                          AppPng.group3,
                          height: AppDimensions.group3PngHeight,
                          width: AppDimensions.group3PngWidth,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
