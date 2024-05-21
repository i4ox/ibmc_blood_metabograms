import 'package:flutter/material.dart';
import 'package:kmk_viewer/uikit/uikit.dart';

/// Custom [ElevatedButton] for app
class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    super.key,
    required this.child,
    required this.onClick,
    this.height,
    this.width,
  });

  final Widget child;

  final Function onClick;

  final double? height;

  final double? width;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(AppColorScheme.of(context).primary),
      ),
      child: Container(
        alignment: Alignment.center,
        width: width,
        height: height,
        child: child,
      ),
      onPressed: () => onClick(),
    );
  }
}
