import 'package:flutter/material.dart';
import 'package:food_delivery/src/features/auth/widgets.dart';

import 'widgets/widgets.dart';

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
    double height = MediaQuery.of(context).size.height * 0.18;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xFFF2F2F2),
        appBar: AuthAppBar(height: height), //AppBar
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
