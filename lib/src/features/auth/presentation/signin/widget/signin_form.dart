import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/src/core/validators/form_validator.dart';

import '../../../../../core/common_widgets/widgets.dart';
import '../../../../../core/constants/const.dart';
import '../../../../../core/services/firebase/auth.dart';

class SignInForm extends StatefulWidget {
  SignInForm({
    super.key,
    required this.active,
    required this.onChanged,
  });

  bool active;
  final ValueChanged<bool> onChanged;
  final String _pwd = "";
  final String _mail = "";
  User? _user;

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _passwordController = TextEditingController();
    FirebaseAuth.instance.authStateChanges().listen((user) {
      setState(() {
        //_user = user;
      });
    });
  }

  @override
  void dispose() {
    _nameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _showForgotTap() {
    widget.onChanged(!widget.active);
  }

  final GlobalKey<FormState> _formLoginKey = GlobalKey<FormState>();

  TextEditingController _nameController = TextEditingController();

  TextEditingController _passwordController = TextEditingController();

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
                  controller: _nameController,
                  text: AppString.labelTextLogin,
                  validate: formValidator.validateName,
                ),
                const SizedBox(
                  height: AppDimensions.height20,
                ),
                TextFieldAuth(
                  controller: _passwordController,
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

  void loginWithFirebase(BuildContext context) async {
    var res =
        await Auth.mailRegister(_nameController.text, _passwordController.text);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: res == null ? Colors.green : Colors.red,
        content: Text(res ?? "Registered!")));

    // if (_formLoginKey.currentState!.validate()) {
    //   GoRouter.of(context).pushNamed(AppRouteConstants.welcomeRouteName);
    // }
  }
}
