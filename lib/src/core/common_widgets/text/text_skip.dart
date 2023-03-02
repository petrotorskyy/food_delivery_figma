import 'package:flutter/material.dart';

import '../../constants/const.dart';

class TextSkip extends StatelessWidget {
  const TextSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
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
  }
}
