import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ibmc_blood_metabograms/uikit/bottom_navigation_bar/ibmc_bottom_navigation_bar.dart';

@RoutePage()
class IbmcHomeScreen extends StatefulWidget {
  const IbmcHomeScreen({super.key});

  @override
  State<IbmcHomeScreen> createState() => _IbmcHomeScreenState();
}

class _IbmcHomeScreenState extends State<IbmcHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Home")),
    );
  }
}
