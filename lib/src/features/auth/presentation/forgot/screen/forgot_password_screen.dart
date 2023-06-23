import 'package:flutter/material.dart';
import 'package:food_delivery/src/core/validators/form_validator.dart';

import '../../../../../core/common_widgets/widgets.dart';
import '../../../../../core/constants/const.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({
    super.key,
    required this.active,
    required this.onChanged,
  });
  final bool active;
  final ValueChanged<bool> onChanged;

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  void _showLoginTap() {
    widget.onChanged(!widget.active);
  }

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  bool? isShow;

  TextEditingController emailController = TextEditingController();

  FormValidator formValidator = FormValidator();

  final _formForgotPasswordKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formForgotPasswordKey,
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: _showLoginTap,
                icon: const Icon(Icons.arrow_back_ios_new_outlined),
                iconSize: 22,
                color: AppColors.colorGrey,
              ),
              Text(
                AppString.forgotText,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(color: AppColors.mainColor),
              ),
              Text(
                "${AppString.labelTextPassword.toLowerCase()}?",
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(color: AppColors.mainColor),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFieldPrefixIcon(
                emailController: emailController,
                validate: formValidator.validateEmail,
                icon: const Icon(Icons.email),
                text: AppString.textEnterYourEmail,
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    AppString.textSendM,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: AppColors.mainColor),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Expanded(
                    child: Text(
                      AppString.textSendMessage,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: AppColors.colorGrey),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 70),
              Text(
                AppString.textSendCode,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: AppColors.colorGrey),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: onSendCode,
                    style: ElevatedButton.styleFrom(
                      shadowColor: AppColors.mainColor,
                      elevation: 20,
                      foregroundColor: Colors.black,
                      fixedSize: const Size(51, 51),
                      shape: const CircleBorder(),
                      backgroundColor: AppColors.mainColor,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                    ),
                    child: const Icon(Icons.arrow_right_alt_rounded,
                        color: Colors.white),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onSendCode() {
    if (_formForgotPasswordKey.currentState!.validate()) {
      print("good");
    } else {
      print("bad");
    }
  }
}
