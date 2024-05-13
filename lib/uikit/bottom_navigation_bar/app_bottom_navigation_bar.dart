import 'package:flutter/material.dart';
import 'package:ibmc_blood_metabograms/uikit/colors/ibmc_color_palette.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

/// Default BottomNavigationBar widget
class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onClick,
    required this.items,
  });

  final int currentIndex;
  final Function(int) onClick;
  final List<SalomonBottomBarItem> items;

  @override
  Widget build(BuildContext context) {
    return SalomonBottomBar(
      currentIndex: currentIndex,
      selectedItemColor: IbmcColorPalette.purple,
      onTap: onClick,
      items: items,
    );
  }
}
