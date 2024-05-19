import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kmk_viewer/assets/resources.dart';
import 'package:kmk_viewer/home/home.dart';
import 'package:kmk_viewer/l10n/s.dart';
import 'package:kmk_viewer/uikit/uikit.dart';

/// NavigationShell with [Scaffold] for [HomeScreen]
class HomeNavigationShell extends StatelessWidget {
  const HomeNavigationShell({
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
            items: _items(context),
            onTap: (index) => _setActiveIndex(index),
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

  // /// Helper method which return all items for [AppBottomBar] inside [HomeScreen]
  List<AppBottomBarItem> _items(BuildContext context) {
    return <AppBottomBarItem>[
      AppBottomBarItem(
        title: S.of(context).dashboard,
        icon: SvgVectors.dashboardSvg,
      ),
      AppBottomBarItem(
        title: S.of(context).analysis,
        icon: SvgVectors.activitySvg,
      ),
      AppBottomBarItem(
        title: S.of(context).profiles,
        icon: SvgVectors.profilesSvg,
      ),
      AppBottomBarItem(
        title: S.of(context).integrations,
        icon: SvgVectors.chatgptSvg,
      ),
      AppBottomBarItem(
        title: S.of(context).settings,
        icon: SvgVectors.settingsSvg,
      ),
    ];
  }
}
