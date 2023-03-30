import 'package:flutter/material.dart';

import '../../../../core/common_widgets/widgets.dart';
import '../../../../core/constants/const.dart';

class RegisterFields extends StatelessWidget {
  const RegisterFields({
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
        ),
        const SizedBox(
          height: AppDimensions.height20,
        ),
        TextFieldAuth(
          controller: mobileController,
          text: AppString.textMobileNumber,
        ),
        const SizedBox(
          height: AppDimensions.height20,
        ),
        TextFieldAuth(
          controller: passwordController,
          text: AppString.labelTextPassword,
        ),
        const SizedBox(
          height: AppDimensions.height20,
        ),
        TextFieldAuth(
          controller: confirmPasswordController,
          text: AppString.textConfirmPasswordSignUp,
        ),
      ],
    );
  }
}
