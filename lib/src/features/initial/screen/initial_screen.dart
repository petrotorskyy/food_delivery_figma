import 'package:flutter/material.dart';

import '../../../core/common_widgets/widgets.dart';
import '../../feature_widgets.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  int _selectedTab = 0;

  final List _pages = [
    const Center(
      child: HomeScreen(),
    ),
    const CartScreen(),
    const ProfileScreen(),
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedTab],
      bottomNavigationBar: AppBottomNavigationBar(
        selectedTab: _selectedTab,
        onTap: (index) => _changeTab(index),
      ),
    );
  }
}
