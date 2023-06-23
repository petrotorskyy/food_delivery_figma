import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/common_widgets/widgets.dart';
import '../../../../../core/constants/const.dart';
import '../../../../../core/routing/app_routers.dart';
import '../../../domain/failures.dart';
import '../bloc/signin_bloc.dart';
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
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  // void _showForgotTap() {
  //   widget.onChanged(!widget.active);
  // }

  void _showForgotTap(bool active) {
    setState(() {
      widget.onChanged(!widget.active);
    });
  }

  late final bool active = true;

  final bool _isChecked = false;

  bool? isShow;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          state.authFailureOrSuccessOption.fold(() {}, (a) {
            late final String message;
            a.fold((l) {
              if (l is InvalidEmailFailure) {
                message = AppString.invalidEmailException;
              }
              if (l is WrongPasswordFailure) {
                message = AppString.wrongPasswordException;
              }
              if (l is UserNotFoundFailure) {
                message = AppString.userNotFoundException;
              }
              if (l is UserDisabledFailure) {
                message = AppString.userDisabledException;
              }
              if (l is TooManyRequestFailure) {
                message = AppString.tooManyRequestException;
              }
              ScaffoldMessenger.of(context)
                  .showSnackBar(CustomPopUp.errorSnackBar(message));
              print(l);
            }, (r) {
              // Navigator.pushReplacement(context,
              //     MaterialPageRoute(builder: (context) => const HomeScreen()));
              Navigator.pushNamedAndRemoveUntil(
                  context, AppRoutes.home, (route) => false);
            });
          });
        },
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
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
      ),
    );
  }
}
