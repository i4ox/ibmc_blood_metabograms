import 'package:flutter/material.dart';
import 'package:ibmc_blood_metabograms/l10n/s.dart';

/// Analysis screen widget
class AnalysisScreen extends StatefulWidget {
  const AnalysisScreen({super.key});

  @override
  State<AnalysisScreen> createState() => _AnalysisScreenState();
}

/// State for [AnalysisScreen]
class _AnalysisScreenState extends State<AnalysisScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).analysis),
      ),
      body: Center(child: Text(S.of(context).inDevelopment)),
    );
  }
}
