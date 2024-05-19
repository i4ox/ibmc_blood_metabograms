import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vector_graphics/vector_graphics_compat.dart';

/// Custom [AppBar] widget
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.icon,
    this.onTap,
    this.prefSize = const Size.fromHeight(kToolbarHeight),
  });

  final Size prefSize;

  final String title;

  final String? icon;

  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: icon != null
          ? IconButton(
              icon: SvgPicture(
                AssetBytesLoader(icon!),
              ),
              onPressed: () => onTap!(),
            )
          : null,
      title: Text(title),
    );
  }

  @override
  Size get preferredSize => prefSize;
}
