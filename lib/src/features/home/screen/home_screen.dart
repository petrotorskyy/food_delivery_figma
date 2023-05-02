import 'package:flutter/material.dart';

import '../../../core/constants/const.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(AppString.homeAppScreen),
        ),
      ),
    );
  }
}
