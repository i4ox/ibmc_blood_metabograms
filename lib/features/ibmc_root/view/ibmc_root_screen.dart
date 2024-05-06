import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ibmc_blood_metabograms/navigation/app_router.dart';
import 'package:ibmc_blood_metabograms/uikit/bottom_navigation_bar/ibmc_bottom_navigation_bar.dart';

@RoutePage()
class IbmcRootScreen extends StatelessWidget {
  const IbmcRootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        IbmcHomeRoute(),
        IbmcAnalysisRoute(),
        IbmcProfileRoute(),
        IbmcSettingsRoute(),
      ],
      bottomNavigationBuilder: (_,tabsRouter) {
        return IbmcBottomNavigationBar(
          tabsRouter: tabsRouter,
        );
      },
    );
  }
}
