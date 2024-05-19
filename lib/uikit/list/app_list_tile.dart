import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kmk_viewer/uikit/colors/app_color_scheme.dart';
import 'package:kmk_viewer/util/extensions/color_filter.dart';
import 'package:vector_graphics/vector_graphics_compat.dart';

/// Custom [ListTile] for this app
class AppListTile extends StatelessWidget {
  const AppListTile({
    super.key,
    required this.title,
    required this.leadingIcon,
    required this.onClick,
    this.trailing,
  });

  final String leadingIcon;

  final String title;

  final Function onClick;

  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture(
        AssetBytesLoader(leadingIcon),
        colorFilter: AppColorScheme.of(context).primary.toColorFilter,
      ),
      trailing: trailing,
      title: Text(title),
      onTap: () => onClick(),
    );
  }
}
