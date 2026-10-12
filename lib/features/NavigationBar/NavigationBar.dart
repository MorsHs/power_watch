
import 'package:flutter/material.dart';
import 'package:power_watch/constant/color.dart';

class NavBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;

  const NavBar({
    super.key,
    required this.selectedIndex,
    required this.onDestinationSelected,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: selectedIndex,
      onDestinationSelected: onDestinationSelected,
      destinations: [
        NavigationDestination(
          icon: Icon(Icons.home_outlined, color: AppColors.background),
          selectedIcon: Icon(Icons.home, color: AppColors.background),
          label: 'Home',
        ),
        NavigationDestination(
          icon: Icon(Icons.map_outlined, color: AppColors.background),
          selectedIcon: Icon(Icons.map, color: AppColors.background),
          label: 'Map',
        ),
        NavigationDestination(
          icon: Icon(Icons.notifications_outlined, color: AppColors.background),
          selectedIcon: Icon(Icons.notifications, color: AppColors.background),
          label: 'Alerts',
        ),
        NavigationDestination(
          icon: Icon(Icons.menu_outlined, color: AppColors.background),
          selectedIcon: Icon(Icons.menu, color: AppColors.background),
          label: 'More',
        ),
      ],
    );
  }
}