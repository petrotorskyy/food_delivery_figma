import 'package:flutter/material.dart';
import 'package:food_delivery/src/core/constants/const.dart';

import '../../../../core/common_widgets/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
      child: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: TextFiledAuth(
              controller: nameController,
              text: AppString.labelTextLogin,
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextFiledAuth(
              controller: passwordController,
              text: AppString.labelTextPassword,
            ),
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
            height: 10,
          ),
          Container(
            height: 50,
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ElevatedButton(
              child: const Text('Login'),
              onPressed: () {
                print(nameController.text);
                print(passwordController.text);
              },
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Align(
            alignment: Alignment.center,
            child: Text('Or'),
          ),
          const SizedBox(
            height: 15,
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
                    height: 10,
                  ),
                  ButtonSocial(
                    onPress: loginWithGoogle,
                    icon: AppSvg.iconGoogleSvg,
                    text: AppString.buttonTextGoogle,
                    buttonColor: Colors.white,
                    textColor: Colors.black,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  void loginWithFacebook() {}

  void loginWithGoogle() {}
}
