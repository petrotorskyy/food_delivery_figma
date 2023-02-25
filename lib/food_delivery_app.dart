import 'package:flutter/material.dart';

import 'src/core/utils/theme/theme.dart';
import 'src/features/feature_widgets.dart';

class FoodDeliveryApp extends StatelessWidget {
  const FoodDeliveryApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Delivery App',
      theme: theme(),
      home: //const SignInScreen()
          const SplashScreen(),
      //const Welcome(),
    );
  }
}
