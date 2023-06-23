import 'package:flutter/material.dart';

import '../../core/constants/const.dart';

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(AppString.textHome),
        ),
      ),
    );
  }
}
