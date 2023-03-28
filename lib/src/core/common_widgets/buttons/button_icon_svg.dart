import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/const.dart';

class ButtonIconSvg extends StatelessWidget {
  final VoidCallback onPress;
  final String icon;

  const ButtonIconSvg({
    super.key,
    required this.onPress,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onPress(),
      style: ElevatedButton.styleFrom(
        // alignment: Alignment.centerLeft,
        backgroundColor: AppColors.buttonIconColor,
        fixedSize: const Size(25, 25),
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(AppDimensions.buttonSocialRegisterRadius),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            icon,
            height: 20,
            width: 20,
          ),
        ],
      ),
    );
  }
}
