import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class IbmcAnalysisScreen extends StatefulWidget {
  const IbmcAnalysisScreen({super.key});

  @override
  State<IbmcAnalysisScreen> createState() => _IbmcAnalysisScreenState();
}

class _IbmcAnalysisScreenState extends State<IbmcAnalysisScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Analysis")),
    );
  }
}
