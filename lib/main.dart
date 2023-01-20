import 'package:flutter/material.dart';

import 'src/core/utils/theme/theme.dart';
import 'src/features/feature_widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Delivery App',
      theme: theme(),
      home: const SplashScreen(),
    );
  }
}
