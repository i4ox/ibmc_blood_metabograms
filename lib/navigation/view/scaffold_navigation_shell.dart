import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ibmc_blood_metabograms/uikit/bottom_navigation_bar/app_bottom_navigation_bar.dart';

class ScaffoldNavigationShell extends StatelessWidget {
  const ScaffoldNavigationShell({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, state) {
        return Scaffold(
          body: navigationShell,
          bottomNavigationBar: AppBottomNavigationBar(
            currentIndex: navigationShell.currentIndex,
            onClick: (index) => _setActiveIndex(index),
            items: _items(),
          ),
        );
      },
    );
  }

  void _setActiveIndex(int index) {
    navigationShell.goBranch(index, initialLocation: index == navigationShell.currentIndex);
  }

  List<BottomNavigationBarItem> _items() {
    return const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: "Dashboard",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.monitor_heart),
        label: "Analysis",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.account_circle_sharp),
        label: "Profiles",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: "Settings",
      ),
    ];
  }
}

