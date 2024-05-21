import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kmk_viewer/uikit/uikit.dart';
import 'package:kmk_viewer/util/extensions/color_filter.dart';
import 'package:vector_graphics/vector_graphics_compat.dart';

/// Custom [Button] for app
class AppTileButton extends StatelessWidget {
  const AppTileButton({
    super.key,
    required this.text,
    required this.icon,
    required this.onClick,
  });

  final String text;

  final String icon;

  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SizedBox(
        height: 50,
        child: Card(
          margin: const EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          color: AppColorScheme.of(context).surfaceSecondary,
          shadowColor: Colors.transparent,
          child: InkWell(
            onTap: () => onClick(),
            borderRadius: BorderRadius.circular(12.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: SvgPicture(
                    AssetBytesLoader(icon),
                    colorFilter: AppColorScheme.of(context).primary.toColorFilter,
                  ),
                ),
                Text(
                  text,
                  style: AppTextScheme.base().label,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
