import 'package:flutter/material.dart';
import 'package:kmk_viewer/uikit/uikit.dart';

/// Custom [TextButton] for app
class AppTextButton extends StatelessWidget {
  const AppTextButton({
    super.key,
    required this.title,
    required this.onClick,
    this.height,
    this.width,
  });

  final String title;

  final Function onClick;

  final double? height;

  final double? width;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () => onClick(),
        child: Container(
          alignment: Alignment.center,
          height: height,
          width: width,
          child: Text(
            title,
            style: AppTextScheme.auth().label.copyWith(color: AppColorScheme.of(context).textLabels),
          ),
        ));
  }
}
