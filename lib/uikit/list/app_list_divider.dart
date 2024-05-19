import 'package:flutter/material.dart';
import 'package:ibmc_blood_metabograms/uikit/uikit.dart';

/// Custom [Divider] for this app
class AppListDivider extends StatelessWidget {
  const AppListDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: AppColorScheme.of(context).backgroundSecondary,
    );
  }
}
