import 'package:flutter/material.dart';

import '../../../core/common_widgets/widgets.dart';
import '../../../core/constants/const.dart';
import '../../feature_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedTab = 0;

  final List _pages = [
    const Center(
      child: HomeScreen(),
    ),
    const CartScreen(),
    const AccountScreen(),
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        child: Center(
          child: Text(AppString.textHome),
        ),
      ),
      bottomNavigationBar: AppBottomNavigationBar(
        selectedTab: _selectedTab,
        onTap: (index) => _changeTab(index),
      ),
    );
  }
}
