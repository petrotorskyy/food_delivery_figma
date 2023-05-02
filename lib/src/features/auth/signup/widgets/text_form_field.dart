import 'package:flutter/material.dart';

import '../../../../core/common_widgets/widgets.dart';
import '../../../../core/constants/const.dart';
import '../../../../core/validators/form_validator.dart';

class TextFormField extends StatelessWidget {
  const TextFormField({
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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFieldAuth(
          controller: nameRegisterController,
          text: AppString.textFullName,
          obscureText: false,
          validate: FormValidator().validateName,
        ),
        const SizedBox(
          height: 20,
        ),
        TextFieldAuth(
          controller: mobileController,
          text: AppString.textMobileNumber,
          obscureText: false,
          validate: FormValidator().validateMobile,
        ),
        const SizedBox(
          height: 20,
        ),
        TextFieldAuth(
          controller: passwordController,
          text: AppString.labelTextPassword,
          obscureText: true,
          validate: FormValidator().validatePassword,
        ),
        const SizedBox(
          height: 20,
        ),
        TextFieldAuth(
          controller: confirmPasswordController,
          text: AppString.textConfirmPasswordSignUp,
          obscureText: true,
          validate: FormValidator().validatePassword,
        ),
      ],
    );
  }
}
