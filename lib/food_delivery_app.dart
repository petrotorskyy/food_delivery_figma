import 'package:flutter/material.dart';

import 'src/core/routing/app_router_config.dart';
import 'src/core/utils/theme/theme.dart';

class FoodDeliveryApp extends StatelessWidget {
  const FoodDeliveryApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Food Delivery App',
      theme: theme(),
      routeInformationParser:
          AppRouter.returnRouter(false).routeInformationParser,
      routerDelegate: AppRouter.returnRouter(false).routerDelegate,
    );
  }
}
