import 'package:flutter/material.dart';
import 'package:food_delivery/src/core/common_widgets/widgets.dart';
import 'package:food_delivery/src/core/constants/const.dart';
import 'package:food_delivery/src/features/auth/widgets.dart';

import '../widgets/widgets.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formRegisterKey = GlobalKey<FormState>();
  TextEditingController nameRegisterController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    nameRegisterController.dispose();
    mobileController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Form(
        key: _formRegisterKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: [
                      const FacebookGoogleButtons(),
                      const SizedBox(
                        height: AppDimensions.height20,
                      ),
                      RegisterFields(
                        nameRegisterController: nameRegisterController,
                        mobileController: mobileController,
                        passwordController: passwordController,
                        confirmPasswordController: confirmPasswordController,
                      ),
                      const SizedBox(
                        height: AppDimensions.height30,
                      ),
                      Row(
                        children: [
                          ButtonWithOutIcon(
                            onPress: onSignUp,
                            text: AppString.signUp,
                            textColor: AppColors.buttonTextSignUpColor,
                            buttonColor: AppColors.signUpButtonBg,
                            height: AppDimensions.textSignUpButtonHeight,
                            width: AppDimensions.textSignUpButtonWidth,
                          ),
                          const SizedBox(
                            width: AppDimensions.width40,
                          ),
                          GestureDetector(
                            onTap: onMember,
                            child: const AlreadyMember(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onSignUp() {
    if (_formRegisterKey.currentState!.validate()) {
      print("good");
    } else {
      print("bad");
    }
  }

  void onMember() {}
}
