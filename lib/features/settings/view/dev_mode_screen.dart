import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ibmc_blood_metabograms/assets/resources.dart';
import 'package:ibmc_blood_metabograms/l10n/s.dart';
import 'package:ibmc_blood_metabograms/service_locator.dart';
import 'package:ibmc_blood_metabograms/uikit/uikit.dart';

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
