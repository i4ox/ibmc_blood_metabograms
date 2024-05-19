import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kmk_viewer/assets/resources.dart';
import 'package:kmk_viewer/l10n/s.dart';
import 'package:kmk_viewer/service_locator.dart';
import 'package:kmk_viewer/uikit/uikit.dart';

/// Screen with developers functions
class DevModeScreen extends StatelessWidget {
  const DevModeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: S.of(context).devMode,
        icon: SvgVectors.arrowLeftSvg,
        onTap: () => getIt<GoRouter>().go("/settings"),
      ),
      body: Column(
        children: [
          // AppListTile(
          //   title: "Onboarding",
          //   onClick: () => getIt<GoRouter>().go("/onboarding"),
          //   icon: SvgIcons.devmode,
          // ),
        ],
      ),
    );
  }
}
