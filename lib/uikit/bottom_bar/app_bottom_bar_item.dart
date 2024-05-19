import 'package:flutter/material.dart';

/// Custom item for [BottomNavigationBar]
class AppBottomBarItem {
  const AppBottomBarItem({
    required this.icon,
    required this.title,
  });

  /// Icon to display
  final String icon;

  /// Text to display
  final String title;
}
