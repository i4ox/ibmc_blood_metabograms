import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class IbmcSettingsScreen extends StatefulWidget {
  const IbmcSettingsScreen({super.key});

  @override
  State<IbmcSettingsScreen> createState() => _IbmcSettingsScreenState();
}

class _IbmcSettingsScreenState extends State<IbmcSettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Settings")),
    );
  }
}
