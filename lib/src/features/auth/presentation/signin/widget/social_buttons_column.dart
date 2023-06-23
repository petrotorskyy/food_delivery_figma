import 'package:flutter/material.dart';
import 'package:food_delivery/src/features/profile/screen/profile_screen.dart';

import '../../../../../core/common_widgets/widgets.dart';
import '../../../../../core/constants/const.dart';
import '../../../../../core/services/firebase/auth.dart';

class SocialButtonsColumn extends StatelessWidget {
  const SocialButtonsColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ButtonSocial(
          onPress: loginWithFacebook,
          icon: AppSvg.iconFacebookSvg,
          text: AppString.buttonTextFacebook,
          buttonColor: Colors.blue,
          textColor: Colors.white,
        ),
        const SizedBox(
          height: AppDimensions.height20,
        ),
        ButtonSocial(
          onPress: () => loginWithGoogle(context),
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

loginWithGoogle(BuildContext context) async {
  var res = await Auth.googleSignIn();
  if (res != null) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ProfileScreen(),
      ),
    );
  }
}
