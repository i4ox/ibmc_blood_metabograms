import 'package:flutter/material.dart';
import 'package:kmk_viewer/l10n/s.dart';
import 'package:kmk_viewer/uikit/uikit.dart';

/// Dashboard screen widget
class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

/// State for [DashboardScreen]
class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: S.of(context).dashboard,
      ),
      body: Container(),
    );
  }
}
