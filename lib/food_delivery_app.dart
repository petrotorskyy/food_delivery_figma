import 'package:flutter/material.dart';
import 'package:food_delivery/src/core/injection.dart';
import 'package:food_delivery/src/core/routing/app_routers.dart';

import 'src/core/utils/theme/theme.dart';

class FoodDeliveryApp extends StatelessWidget {
  const FoodDeliveryApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return MaterialApp.router(
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Delivery App',
      theme: theme(),
      // routeInformationParser:
      //    AppRouter.returnRouter(false).routeInformationParser,
      //routerDelegate: AppRouter.returnRouter(false).routerDelegate,
      initialRoute: Injection.getIt.get<AppRoutes>().initialRoute,
      routes: AppRoutes.routes,
    );
  }
}
