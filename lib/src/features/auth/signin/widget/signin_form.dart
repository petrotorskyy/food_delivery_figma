import 'package:flutter/material.dart';

import '../../../../core/common_widgets/widgets.dart';
import '../../../../core/constants/const.dart';

class SignInForm extends StatelessWidget {
  SignInForm({
    super.key,
    required this.active,
    required this.onChanged,
  });

  bool active;
  final ValueChanged<bool> onChanged;

  void _showForgotTap() {
    onChanged(!active);
  }

  final _formLoginKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool? isShow;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formLoginKey,
      child: Column(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Column(
                children: [
                  TextFieldAuth(
                    controller: nameController,
                    text: AppString.labelTextLogin,
                  ),
                  const SizedBox(
                    height: AppDimensions.height20,
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
                        style:
                            Theme.of(context).textTheme.displaySmall!.copyWith(
                                  color: AppColors.forgotPasswordTextColor,
                                ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: AppDimensions.height15,
                  ),
                  ButtonWithOutIcon(
                    onPress: loginWithFacebook,
                    text: AppString.login,
                    buttonColor: AppColors.loginButtonBg,
                    textColor: Colors.white,
                    height: AppDimensions.textLoginScreenButtonHeight,
                    width: AppDimensions.textLoginScreenButtonWidth,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void loginWithFacebook() {}
}
