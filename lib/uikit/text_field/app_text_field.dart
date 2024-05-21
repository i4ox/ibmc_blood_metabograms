import 'package:flutter/material.dart';
import 'package:kmk_viewer/uikit/uikit.dart';

/// Custom edit text field
class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.text,
    required this.controller,
  });

  final String text;

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        label: Text(text),
        labelStyle: TextStyle(color: AppColorScheme.of(context).textLabels),
        filled: true,
        fillColor: AppColorScheme.of(context).backgroundSecondary,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColorScheme.of(context).primary),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
