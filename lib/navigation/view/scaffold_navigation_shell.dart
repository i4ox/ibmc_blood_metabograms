import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:ibmc_blood_metabograms/assets/resources.dart';
import 'package:ibmc_blood_metabograms/home/home.dart';
import 'package:ibmc_blood_metabograms/l10n/s.dart';
import 'package:ibmc_blood_metabograms/uikit/bottom_navigation_bar/app_bottom_navigation_bar.dart';
import 'package:ibmc_blood_metabograms/uikit/colors/ibmc_color_scheme.dart';
import 'package:ibmc_blood_metabograms/util/extensions/color_filter.dart';
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

  /// Helper method which return all items for [AppBottomNavigationBar] inside [HomeScreen]
  List<SalomonBottomBarItem> _items(BuildContext context, int currentIndex) {
    return <SalomonBottomBarItem>[
      SalomonBottomBarItem(
        title: Text(S.of(context).dashboard),
        icon: SvgPicture.asset(
          SvgIcons.dashboard,
          colorFilter: currentIndex == 0 ? IbmcColorScheme.light().primary.toColorFilter : null,
        ),
      ),
      SalomonBottomBarItem(
        icon: SvgPicture.asset(
          SvgIcons.activity,
          colorFilter: currentIndex == 1 ? IbmcColorScheme.light().primary.toColorFilter : null,
        ),
        title: Text(S.of(context).analysis),
      ),
      SalomonBottomBarItem(
        icon: SvgPicture.asset(
          SvgIcons.profiles,
          colorFilter: currentIndex == 2 ? IbmcColorScheme.light().primary.toColorFilter : null,
        ),
        title: Text(S.of(context).profiles),
      ),
      SalomonBottomBarItem(
        icon: SvgPicture.asset(
          SvgIcons.settings,
          colorFilter: currentIndex == 3 ? IbmcColorScheme.light().primary.toColorFilter : null,
        ),
        title: Text(S.of(context).settings),
      ),
    ];
  }
}
