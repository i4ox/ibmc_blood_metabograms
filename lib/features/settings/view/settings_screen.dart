import 'package:flutter/material.dart';

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
              onPressed: () {},
            ),
            TextButton(
              child: Text("en"),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
