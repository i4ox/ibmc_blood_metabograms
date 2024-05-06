import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class IbmcProfileScreen extends StatefulWidget {
  const IbmcProfileScreen({super.key});

  @override
  State<IbmcProfileScreen> createState() =>_IbmcProfileScreenState();
}

class _IbmcProfileScreenState extends State<IbmcProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Profile")),
    );
  }
}
