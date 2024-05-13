import 'package:flutter/material.dart';
import 'package:ibmc_blood_metabograms/l10n/s.dart';

/// Profiles screen widget
class ProfilesScreen extends StatefulWidget {
  const ProfilesScreen({super.key});

  @override
  State<ProfilesScreen> createState() => _ProfilesScreenState();
}

/// State for [ProfilesScreen]
class _ProfilesScreenState extends State<ProfilesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).profiles),
      ),
      body: Center(child: Text(S.of(context).inDevelopment)),
    );
  }
}
