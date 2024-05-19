import 'package:flutter/material.dart';
import 'package:ibmc_blood_metabograms/l10n/s.dart';
import 'package:ibmc_blood_metabograms/uikit/uikit.dart';

/// Profiles screen widget
class ProfilesScreen extends StatelessWidget {
  const ProfilesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: S.of(context).profiles,
      ),
      body: Center(child: Text(S.of(context).paidFeature)),
    );
  }
}
