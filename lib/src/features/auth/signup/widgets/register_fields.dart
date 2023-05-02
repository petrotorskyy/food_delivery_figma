import 'package:flutter/material.dart';

import '../../../../core/common_widgets/widgets.dart';
import '../../../../core/constants/const.dart';
import '../../../../core/validators/form_validator.dart';

class RegisterFields extends StatelessWidget {
  RegisterFields({
    super.key,
    required this.nameRegisterController,
    required this.mobileController,
    required this.passwordController,
    required this.confirmPasswordController,
  });

  final TextEditingController nameRegisterController;
  final TextEditingController mobileController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;

  FormValidator formValidator = FormValidator();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFieldAuth(
          controller: nameRegisterController,
          text: AppString.textFullName,
          validate: formValidator.validateName,
        ),
        const SizedBox(
          height: AppDimensions.height20,
        ),
        TextFieldAuth(
          controller: mobileController,
          text: AppString.textMobileNumber,
          validate: formValidator.validateMobile,
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
        const SizedBox(
          height: AppDimensions.height20,
        ),
        TextFieldAuth(
          controller: confirmPasswordController,
          text: AppString.textConfirmPasswordSignUp,
          isPassword: true,
          validate: (val) => formValidator.validateConfirmPassword(
              val, passwordController.text),
        ),
      ],
    );
  }
}
