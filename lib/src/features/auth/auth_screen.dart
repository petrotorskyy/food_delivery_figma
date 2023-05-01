import 'package:flutter/material.dart';
import 'package:food_delivery/src/features/auth/widgets.dart';

import '../../core/common_widgets/widgets.dart';
import '../../core/constants/const.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _formLoginKey = GlobalKey<FormState>();

  //final bool _isChecked = false;
  bool _active = true;
  TextEditingController nameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  void _loginForgotChanged(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xFFF2F2F2),
        appBar: AppBar(
          backgroundColor: const Color(0xFFF2F2F2),
          toolbarHeight: MediaQuery.of(context).size.height * 0.18,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30)),
          ),
          title: const LogoSvg(
            height: 180,
            width: 100,
            svgIcon: AppSvg.logoSvg,
          ),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text(
                  AppString.login,
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium!
                      .copyWith(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  AppString.signUp,
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium!
                      .copyWith(color: Colors.black),
                ),
              ),
            ],
            indicator: const UnderlineTabIndicator(
              borderSide: BorderSide(
                width: 3,
                color: AppColors.colorIndicatorSignIn,
              ),
              insets: EdgeInsets.symmetric(horizontal: 80.0),
            ),
            indicatorSize: TabBarIndicatorSize.label,
          ),
        ), //AppBar
        body: TabBarView(
          children: [
            _active
                ? SignInScreen(
                    active: _active,
                    onChanged: _loginForgotChanged,
                  )
                : ForgotPasswordScreen(
                    active: _active,
                    onChanged: _loginForgotChanged,
                  ),
            const SignUpScreen(),
          ],
        ),
      ), //Scaffold
      //Removing Debug Banner
    );
  }

  void loginWithFacebook() {}

  void loginWithGoogle() {}

  void onSendCode() {}

  onLoginScreen(bool bool) {}
}
