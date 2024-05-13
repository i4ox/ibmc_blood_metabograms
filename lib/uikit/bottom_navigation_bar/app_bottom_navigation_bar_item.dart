import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ibmc_blood_metabograms/util/extensions/color_filter.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

/// Custom item for [BottomNavigationBar]
class AppBottomNavigationBarItem {
  const AppBottomNavigationBarItem({
    required this.title,
    required this.icon,
    required this.color,
  });

  final String title;

  final String icon;

  final Color color;

  /// Custom build method which build the [SalomonBottomBarItem]
  SalomonBottomBarItem build() {
    return SalomonBottomBarItem(
      title: Text(
        title,
        style: TextStyle(
          color: color,
        ),
      ),
      icon: SvgPicture.asset(
        icon,
        colorFilter: color.toColorFilter,
      ),
    );
  }
}
