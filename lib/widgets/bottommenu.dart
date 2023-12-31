import 'package:spirity/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomMenu extends StatefulWidget {
  const BottomMenu({Key? key}) : super(key: key);

  @override
  State<BottomMenu> createState() => _BottomMenuState();
}

class _BottomMenuState extends State<BottomMenu> {
  static final List<Map<String, dynamic>> navigationItems = [
    {
      'label': 'Dashboard',
      'icon': Icons.dashboard,
      'iconOutlined': Icons.dashboard_outlined,
      'route': Routes.dashboard,
    },
    {
      'label': 'Settings',
      'icon': Icons.settings,
      'iconOutlined': Icons.settings_outlined,
      'route': Routes.settings,
    },
  ];

  void _onItemTapped(int index) {
    final route = navigationItems[index]['route'] as String;
    Get.offNamed(route);
  }

  @override
  Widget build(BuildContext context) {
    final selectedIndex = navigationItems
        .indexWhere((element) => element['route'] == Get.currentRoute);

    return BottomNavigationBar(
      items: [
        for (var navigationItem in navigationItems)
          BottomNavigationBarItem(
            icon: selectedIndex == navigationItems.indexOf(navigationItem)
                ? Icon(navigationItem['icon'])
                : Icon(navigationItem['iconOutlined']),
            label: navigationItem['label'] as String,
          )
      ],
      currentIndex: selectedIndex == -1 ? 0 : selectedIndex,
      onTap: _onItemTapped,
    );
  }
}
