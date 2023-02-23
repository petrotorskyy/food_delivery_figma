import 'package:bordered_text/bordered_text.dart';
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
    return Row(
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
              pageController.jumpToPage(widget.titles.length - 1);
            },
            child: 1 == 1 //pageController.page == (widget.titles.length - 1)
                ? BorderedText(
                    strokeWidth: 5.0,
                    strokeColor: AppColors.textSkipShadow,
                    child: text,
                  )
                : text,
          ),
        ),
      ],
    );
  }
}
