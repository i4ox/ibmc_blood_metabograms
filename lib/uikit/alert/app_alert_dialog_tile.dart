import 'package:flutter/material.dart';
import 'package:kmk_viewer/uikit/uikit.dart';

/// Custom tile for [AppAlertDialog]
class AppAlertDialogTile extends StatelessWidget {
  const AppAlertDialogTile({
    super.key,
    required this.title,
    required this.onTap,
    this.leading,
    this.trailing,
  });

  final String title;

  final VoidCallback onTap;

  final Widget? leading;

  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: AppTextScheme.base().label,
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 8),
      dense: true,
      onTap: () => onTap(),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      trailing: trailing,
      leading: leading,
    );
  }
}
