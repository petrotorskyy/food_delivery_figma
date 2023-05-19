import 'package:flutter/material.dart';

import '../../../core/constants/const.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(AppString.textCart),
        ),
      ),
    );
  }
}
