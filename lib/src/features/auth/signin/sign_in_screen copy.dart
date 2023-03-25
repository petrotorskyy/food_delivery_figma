import 'package:flutter/material.dart';
import 'package:food_delivery/src/core/common_widgets/logo/logo_svg.dart';

import '../../../core/constants/const.dart';
import '../widgets.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: const Color(0xFFF2F2F2),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xFFF2F2F2),
          bottom: PreferredSize(
            preferredSize: const Size(100, 200),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(30.0),
                ),
                color: AppColors.signInHeaderColor,
              ), //400,
              child: SafeArea(
                child: Column(
                  children: [
                    const LogoSvg(
                      height: 246,
                      width: 300,
                      svgIcon: AppSvg.logoSvg,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 5,
                        ),
                        child: TabBar(
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
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            LoginScreen(),
            SignUpScreen(),
          ],
        ),
      ),
    );
  }
}
