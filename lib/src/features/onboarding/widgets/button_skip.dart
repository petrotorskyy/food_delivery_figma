import 'package:flutter/material.dart';

import '../../../core/constants/const.dart';
import '../../feature_widgets.dart';

class ButtonSkip extends StatelessWidget {
  const ButtonSkip({
    Key? key,
    required this.pageController,
    required this.widget,
  }) : super(key: key);

  final PageController pageController;
  final OnBoardingScreen widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 36,
            left: 192,
            right: 62,
          ),
          child: InkWell(
            onTap: () {
              print('skip');
              pageController.jumpTo(widget.titles.length - 1);
            },
            child: Text(
              AppString.skip.toUpperCase(),
              style: const TextStyle(
                fontFamily: AppFonts.fontTextSkip,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w800,
                fontSize: AppDimensions.skipSize,
                color: Color.fromRGBO(255, 255, 255, 0.6),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
