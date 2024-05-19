import 'package:flutter/material.dart';
import 'package:kmk_viewer/l10n/s.dart';
import 'package:kmk_viewer/uikit/uikit.dart';

/// Integrations screen widget
class IntegrationsScreen extends StatelessWidget {
  const IntegrationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: S.of(context).integrations,
      ),
      body: Center(child: Text(S.of(context).paidFeature)),
    );
  }
}
