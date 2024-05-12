import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ibmc_blood_metabograms/config/s.dart';
import 'package:ibmc_blood_metabograms/home/home.dart';
import 'package:ibmc_blood_metabograms/uikit/bottom_navigation_bar/app_bottom_navigation_bar.dart';

/// NavigationShell with [Scaffold] for [HomeScreen]
class ScaffoldNavigationShell extends StatefulWidget {
  const ScaffoldNavigationShell({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  State<StatefulWidget> createState() => _ScaffoldNavigationShellState();
}

class _ScaffoldNavigationShellState extends State<ScaffoldNavigationShell> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, state) {
        return Scaffold(
          body: widget.navigationShell,
          bottomNavigationBar: AppBottomNavigationBar(
            currentIndex: widget.navigationShell.currentIndex,
            onClick: (index) => _setActiveIndex(index),
            items: _items(context),
          ),
        );
      },
    );
  }

  void _setActiveIndex(int index) {
    widget.navigationShell.goBranch(index, initialLocation: index == widget.navigationShell.currentIndex);
  }

  List<BottomNavigationBarItem> _items(BuildContext context) {
    return <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: S.of(context).dashboard,
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.monitor_heart),
        label: S.of(context).analysis,
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.account_circle_sharp),
        label: S.of(context).profiles,
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: S.of(context).settings,
      ),
    ];
  }
}

