import 'package:flutter/material.dart';

import '../../../../../core/common_widgets/widgets.dart';
import '../../../../../core/constants/const.dart';

class FacebookGoogleButtons extends StatelessWidget {
  const FacebookGoogleButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          AppString.textRegister,
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                color: AppColors.mainColor,
              ),
        ),
        const SizedBox(
          width: 20,
        ),
        Row(
          children: const [
            ButtonIconSvg(
                onPress: registerWithGoogle, icon: AppSvg.iconGoogleSvg),
            SizedBox(
              width: 15,
            ),
            ButtonIconSvg(
                onPress: registerWithFacebook, icon: AppSvg.iconFacebookOval),
          ],
        ),
      ],
    );
  }
}

void registerWithGoogle() {}

void registerWithFacebook() {}
