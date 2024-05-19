import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kmk_viewer/assets/resources.dart';
import 'package:kmk_viewer/uikit/uikit.dart';

/// NavigationShell with [Scaffold] for [UiKitScreen]
class UiKitNavigationShell extends StatelessWidget {
  const UiKitNavigationShell({
    super.key,
    required this.navigationShell,
  });

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, state) {
        return Scaffold(
          body: navigationShell,
          bottomNavigationBar: AppBottomBar(
            onTap: (index) => _setActiveIndex(index),
            items: _items(),
            currentIndex: navigationShell.currentIndex,
          ),
        );
      },
    );
  }

  /// Helper method which go to the selected item of [AppBottomBar]
  void _setActiveIndex(int index) {
    navigationShell.goBranch(index, initialLocation: index == navigationShell.currentIndex);
  }

  /// Helper method which return all items for [AppBottomBar] inside [UiKitScreen]
  List<AppBottomBarItem> _items() {
    return <AppBottomBarItem>[
      AppBottomBarItem(
        title: "Widgets",
        icon: SvgVectors.widgetsSvg,
      ),
      AppBottomBarItem(
        title: "Colors",
        icon: SvgVectors.colorsSvg,
      ),
      AppBottomBarItem(
        title: "Fonts",
        icon: SvgVectors.fontsSvg,
      ),
      AppBottomBarItem(
        title: "Icons",
        icon: SvgVectors.iconsSvg,
      ),
    ];
  }
}
