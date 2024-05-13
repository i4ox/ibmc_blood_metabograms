import 'package:flutter/material.dart';
import 'package:ibmc_blood_metabograms/features/settings/widgets/widgets.dart';
import 'package:ibmc_blood_metabograms/l10n/s.dart';

/// Settings screen widget
class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

/// State for [SettingsScreen]
class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).settings),
      ),
      body: SettingsList(),
    );
  }
}
