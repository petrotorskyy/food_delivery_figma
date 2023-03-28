import 'package:flutter/material.dart';

import '../../../../core/common_widgets/widgets.dart';
import '../../../../core/constants/const.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({
    super.key,
    required this.active,
    required this.onChanged,
  });

  final bool active;
  final ValueChanged<bool> onChanged;

  void _showForgotTap() {
    onChanged(!active);
  }

  final _formLoginKey = GlobalKey<FormState>();
  final bool _isChecked = false;
  bool? isShow;
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formLoginKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: TextFieldAuth(
                    controller: nameController,
                    text: AppString.labelTextLogin,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFieldAuth(
                  controller: passwordController,
                  text: AppString.labelTextPassword,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                    onPressed: _showForgotTap,
                    child: Text(
                      AppString.forgotPasswordText,
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                            color: AppColors.forgotPasswordTextColor,
                          ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ButtonWithOutIcon(
                  onPress: loginWithFacebook,
                  text: AppString.login,
                  buttonColor: AppColors.loginButtonBg,
                  textColor: Colors.white,
                  height: AppDimensions.textLoginScreenButtonHeight,
                  width: AppDimensions.textLoginScreenButtonWidth,
                ),
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    AppString.textOr,
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .copyWith(color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        ButtonSocial(
                          onPress: loginWithFacebook,
                          icon: AppSvg.iconFacebookSvg,
                          text: AppString.buttonTextFacebook,
                          buttonColor: Colors.blue,
                          textColor: Colors.white,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ButtonSocial(
                          onPress: loginWithGoogle,
                          icon: AppSvg.iconGoogleSvg,
                          text: AppString.buttonTextGoogle,
                          buttonColor: Colors.white,
                          textColor: Colors.grey,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void loginWithFacebook() {}

  void loginWithGoogle() {}
}
