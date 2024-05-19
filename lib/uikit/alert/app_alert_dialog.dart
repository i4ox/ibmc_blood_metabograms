import 'package:flutter/material.dart';
import 'package:kmk_viewer/uikit/uikit.dart';

class AppAlertDialog extends StatelessWidget {
  const AppAlertDialog({
    super.key,
    required this.title,
    required this.content,
  });

  final String title;

  final List<Widget> content;

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      backgroundColor: AppColorScheme.of(context).background,
      contentPadding: const EdgeInsets.all(16),
      elevation: 0,
      title: Text(
        title,
        style: AppTextScheme.base().text,
      ),
      children: content,
    );
  }
}
