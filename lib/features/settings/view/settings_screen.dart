import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ibmc_blood_metabograms/home/home.dart';
import 'package:ibmc_blood_metabograms/service_locator.dart';

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
      body: Center(
        child: Column(
          children: <Widget>[
            TextButton(
              child: Text("ru"),
              onPressed: () {}
            ),
            TextButton(
              child: Text("en"),
              onPressed: () {}
            ),
            TextButton(
              child: Text("onboarding"),
              onPressed: () {
                getIt<HomeBloc>().add(HomeCheckOnboarding());
                context.go('/onboarding');
              },
            ),
            TextButton(
              child: Text("localization"),
              onPressed: () {
                context.go('/settings/l10n');
              },
            ),
          ],
        ),
      ),
    );
  }
}
