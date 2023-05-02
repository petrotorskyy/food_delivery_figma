import 'package:flutter/material.dart';
import 'package:food_delivery/src/core/validators/form_validator.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/common_widgets/widgets.dart';
import '../../../../core/constants/const.dart';
import '../../../../core/routing/app_route_constants.dart';

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

  FormValidator formValidator = FormValidator();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formLoginKey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Column(
              children: [
                TextFieldAuth(
                  controller: nameController,
                  text: AppString.labelTextLogin,
                  validate: formValidator.validateName,
                ),
                const SizedBox(
                  height: AppDimensions.height20,
                ),
                TextFieldAuth(
                  controller: passwordController,
                  text: AppString.labelTextPassword,
                  isPassword: true,
                  validate: formValidator.validatePassword,
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
                ButtonWithOutIcon(
                  onPress: () => loginWithFirebase(context),
                  text: AppString.login,
                  buttonColor: AppColors.loginButtonBg,
                  textColor: Colors.white,
                  height: AppDimensions.textLoginScreenButtonHeight,
                  width: AppDimensions.textLoginScreenButtonWidth,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void loginWithFirebase(BuildContext context) {
    GoRouter.of(context).pushNamed(AppRouteConstants.welcomeRouteName);
  }
}
