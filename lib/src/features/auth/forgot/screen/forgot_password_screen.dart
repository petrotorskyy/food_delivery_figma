import 'package:flutter/material.dart';

import '../../../../core/common_widgets/widgets.dart';
import '../../../../core/constants/const.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({
    super.key,
    required this.active,
    required this.onChanged,
  });
  final bool active;
  final ValueChanged<bool> onChanged;

  void _showLoginTap() {
    onChanged(!active);
  }

  bool? isShow;
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                ),
                child: const Icon(Icons.arrow_right_alt_rounded,
                    color: Colors.white),
              )
            ],
          ),
        ],
      ),
    );
  }

  void onSendCode() {}
}
