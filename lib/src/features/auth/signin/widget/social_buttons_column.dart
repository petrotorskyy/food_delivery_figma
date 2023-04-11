import 'package:flutter/material.dart';

import '../../../../core/common_widgets/widgets.dart';
import '../../../../core/constants/const.dart';

class SocialButtonsColumn extends StatelessWidget {
  const SocialButtonsColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ButtonSocial(
          onPress: loginWithFacebook,
          icon: AppSvg.iconFacebookSvg,
          text: AppString.buttonTextFacebook,
          buttonColor: Colors.blue,
          textColor: Colors.white,
        ),
        SizedBox(
          height: AppDimensions.height20,
        ),
        ButtonSocial(
          onPress: loginWithGoogle,
          icon: AppSvg.iconGoogleSvg,
          text: AppString.buttonTextGoogle,
          buttonColor: Colors.white,
          textColor: Colors.grey,
        ),
      ],
    );
  }
}

void loginWithFacebook() {}

void loginWithGoogle() {}
