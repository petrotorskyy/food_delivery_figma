import 'package:flutter/material.dart';

import '../../constants/const.dart';

class AppBottomNavigationBar extends StatelessWidget {
  AppBottomNavigationBar({
    super.key,
    required int selectedTab,
    required this.onTap,
  }) : _selectedTab = selectedTab;

  final int _selectedTab;
  void Function(int)? onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedTab,
      onTap: onTap,
      selectedItemColor: AppColors.bottomNavigBarSelectedColor,
      unselectedItemColor: AppColors.bottomNavigBarUnSelectedColor,
      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
      unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
      showSelectedLabels: true,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: AppString.textHome,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label: AppString.textAccount,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.card_travel),
          label: AppString.textCart,
        ),
      ],
    );
  }
}
