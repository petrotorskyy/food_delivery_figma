import 'package:flutter/material.dart';
import 'package:food_delivery/src/features/auth/signin/widget/widgets.dart';

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
                  height: AppDimensions.height15,
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
                  height: AppDimensions.height15,
                ),
                const ButtonWithOutIcon(
                  onPress: loginWithFacebook,
                  text: AppString.login,
                  buttonColor: AppColors.loginButtonBg,
                  textColor: Colors.white,
                  height: AppDimensions.textLoginScreenButtonHeight,
                  width: AppDimensions.textLoginScreenButtonWidth,
                ),
                const SizedBox(
                  height: AppDimensions.height10,
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
                  height: AppDimensions.height20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SocialButtonsColumn(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
