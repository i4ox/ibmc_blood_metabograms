import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class IbmcBottomNavigationBar extends StatelessWidget {
  final TabsRouter tabsRouter;

  const IbmcBottomNavigationBar({
    super.key,
    required this.tabsRouter,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: tabsRouter.activeIndex,
      onTap: (value) => tabsRouter.setActiveIndex(value),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
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
      ],
    );
  }
}
