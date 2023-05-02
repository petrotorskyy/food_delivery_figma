import 'package:flutter/material.dart';
import 'package:food_delivery/src/features/home/screen/home_screen.dart';
import 'package:go_router/go_router.dart';

import '../../features/feature_widgets.dart';
import '../../features/onboarding/data/data.dart';
import 'app_route_constants.dart';

class AppRouter {
  static GoRouter returnRouter(bool isAuth) {
    GoRouter router = GoRouter(
      routes: [
        GoRoute(
          name: AppRouteConstants.splashScreenRouteName,
          path: '/',
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: SplashScreen(),
            );
          },
        ),

        GoRoute(
          name: AppRouteConstants.authRouteName,
          path: '/auth_screen',
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: AuthScreen(),
            );
          },
        ),
        // GoRoute(
        //   name: AppRouteConstants.profileRouteName,
        //   path: '/profile/:username/:userid',
        //   pageBuilder: (context, state) {
        //     return MaterialPage(
        //         child: Profile(
        //       userid: state.params['userid']!,
        //       username: state.params['username']!,
        //     ));
        //   },
        // ),
        GoRoute(
          name: AppRouteConstants.onboardingRouteName,
          path: '/onboarding',
          pageBuilder: (context, state) {
            return MaterialPage(
              child: OnBoardingScreen(
                images: imageList,
                titles: titlesList,
              ),
            );
          },
        ),
        GoRoute(
          name: AppRouteConstants.welcomeRouteName,
          path: '/welcome',
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: Welcome(),
            );
          },
        ),
        GoRoute(
          name: AppRouteConstants.homeRouteName,
          path: '/home',
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: HomeScreen(),
            );
          },
        ),
      ],
      errorPageBuilder: (context, state) {
        return const MaterialPage(child: ErrorScreen());
      },
      // redirect: (context, state) {
      //   if (!isAuth &&
      //       state.location
      //           .startsWith('/${AppRouteConstants.profileRouteName}')) {
      //     return context.namedLocation(AppRouteConstants.contactUsRouteName);
      //   } else {
      //     return null;
      //   }
      // },
    );
    return router;
  }
}
