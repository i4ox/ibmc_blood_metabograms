import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ibmc_blood_metabograms/assets/resources.dart';
import 'package:ibmc_blood_metabograms/home/home.dart';
import 'package:ibmc_blood_metabograms/l10n/s.dart';
import 'package:ibmc_blood_metabograms/uikit/bottom_navigation_bar/app_bottom_navigation_bar.dart';
import 'package:ibmc_blood_metabograms/uikit/bottom_navigation_bar/app_bottom_navigation_bar_item.dart';
import 'package:ibmc_blood_metabograms/uikit/colors/app_color_scheme.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

/// NavigationShell with [Scaffold] for [HomeScreen]
class ScaffoldNavigationShell extends StatefulWidget {
  const ScaffoldNavigationShell({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  State<StatefulWidget> createState() => _ScaffoldNavigationShellState();
}

/// State for [ScaffoldNavigationShell]
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
            items: _items(context, widget.navigationShell.currentIndex),
          ),
        );
      },
    );
  }

  /// Helper method which go to the selected item of [AppBottomNavigationBar]
  void _setActiveIndex(int index) {
    widget.navigationShell.goBranch(index, initialLocation: index == widget.navigationShell.currentIndex);
  }


  /// Helper method which return color for item
  Color _getColorForItem(int itemIndex, int currentIndex) {
    return itemIndex == currentIndex ? AppColorScheme.light().primary : Color(0xFF6C7278);
  }

  /// Helper method which return all items for [AppBottomNavigationBar] inside [HomeScreen]
  List<SalomonBottomBarItem> _items(BuildContext context, int currentIndex) {
    return <SalomonBottomBarItem>[
      AppBottomNavigationBarItem(
        title: S.of(context).dashboard,
        icon: SvgIcons.dashboard,
        color: _getColorForItem(0, currentIndex),
      ).build(),
      AppBottomNavigationBarItem(
        title: S.of(context).analysis,
        icon: SvgIcons.activity,
        color: _getColorForItem(1, currentIndex),
      ).build(),
      AppBottomNavigationBarItem(
        title: S.of(context).profiles,
        icon: SvgIcons.profiles,
        color: _getColorForItem(2, currentIndex),
      ).build(),
      AppBottomNavigationBarItem(
        title: S.of(context).settings,
        icon: SvgIcons.settings,
        color: _getColorForItem(3, currentIndex),
      ).build(),
    ];
  }
}
