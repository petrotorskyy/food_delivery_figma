import 'package:flutter/material.dart';

import '../../../../core/common_widgets/widgets.dart';
import '../../../../core/constants/const.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formLoginKey = GlobalKey<FormState>();
  final bool _isChecked = false;
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    nameController.clear();
    passwordController.clear();
    super.dispose();
  }

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
                  padding: const EdgeInsets.only(top: 10),
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
                    onPressed: () {
                      //forgot password screen
                    },
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
