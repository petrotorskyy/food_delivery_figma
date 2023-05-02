import 'package:flutter/material.dart';

import '../../../../core/constants/const.dart';
import '../widget/widgets.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({
    super.key,
    required this.active,
    required this.onChanged,
  });

  final bool active;
  final ValueChanged<bool> onChanged;

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  // void _showForgotTap() {
  //   widget.onChanged(!widget.active);
  // }

  void _showForgotTap(bool active) {
    setState(() {
      widget.onChanged(!widget.active);
    });
  }

  @override
  void dispose() {
    nameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  late final bool active = true;
  final _formLoginKey = GlobalKey<FormState>();

  final bool _isChecked = false;

  bool? isShow;

  TextEditingController nameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Form(
        key: _formLoginKey,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: [
                      SignInForm(
                        active: widget.active,
                        onChanged: _showForgotTap,
                      ),
                      const SizedBox(
                        height: AppDimensions.height10,
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
                        height: AppDimensions.height20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          SocialButtonsColumn(),
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
}
