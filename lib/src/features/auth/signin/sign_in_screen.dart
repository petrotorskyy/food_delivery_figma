import 'package:flutter/material.dart';
import 'package:food_delivery/src/core/constants/const.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.signInScreenBg,
      body: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: AppColors.signInScreenBg,
        appBar: AppBar(
            // bottom: TabBar(
            //   indicator: const BoxDecoration(
            //     color: AppColors.signInHeaderColor,
            //     borderRadius: BorderRadius.only(
            //       bottomLeft: Radius.circular(30),
            //       bottomRight: Radius.circular(30),
            //     ),
            //    // tabs: [
            //       Tab(
            //         child: Text('Login'),
            //       ),
            //       Tab(
            //         child: Text('Sign-up'),
            //       ),
            // ],
            ),
      ),
      // body: Column(
      //   children: [
      //     Expanded(
      //       flex: 4,
      //       child: Container(
      //         width: AppDimensions.HeaderSignInWidth,
      //         height: AppDimensions.HeaderSignInHeigth,
      //         decoration: const BoxDecoration(
      //           color: AppColors.signInHeaderColor,
      //           borderRadius: BorderRadius.only(
      //             bottomLeft: Radius.circular(30),
      //             bottomRight: Radius.circular(30),
      //           ),
      //         ),
      //       ),
      //     ),
      //     Expanded(
      //       flex: 6,
      //       child: Container(),
      //     ),
      //   ],
      // ),
      //  ),
      // ),
    );
  }
}
