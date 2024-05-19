import 'package:flutter/material.dart';
import 'package:kmk_viewer/l10n/s.dart';
import 'package:kmk_viewer/uikit/uikit.dart';

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
