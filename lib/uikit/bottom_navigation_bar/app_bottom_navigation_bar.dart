import 'package:flutter/material.dart';

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
  final List<BottomNavigationBarItem> items;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onClick,
      items: items,
    );
  }
}
