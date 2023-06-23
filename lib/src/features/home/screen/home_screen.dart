import 'package:flutter/material.dart';
import 'package:food_delivery/src/features/first/first.dart';

import '../../../core/common_widgets/widgets.dart';
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
      child: First(),
    ),
    const Center(
      child: CartScreen(),
    ),
    const Center(
      child: ProfileScreen(),
    ),
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _pages.elementAt(_selectedTab),
      ),
      bottomNavigationBar: AppBottomNavigationBar(
        selectedTab: _selectedTab,
        onTap: (index) => _changeTab(index),
      ),
    );
  }
}
