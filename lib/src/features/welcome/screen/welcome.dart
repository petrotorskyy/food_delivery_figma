import 'package:flutter/material.dart';
import 'package:food_delivery/src/features/welcome/widgets.dart';
import 'package:food_delivery/src/features/welcome/widgets/skip_button.dart';

import '../../../core/constants/const.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: AppColors.onBoardingBg,
      body: Column(
        children: const [
          SkipButton(),
          WelcomeBlock(),
          SelectLocation(),
        ],
      ),
    );
  }
}
