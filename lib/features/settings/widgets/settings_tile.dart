import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ibmc_blood_metabograms/uikit/colors/ibmc_color_scheme.dart';
import 'package:ibmc_blood_metabograms/util/extensions/color_filter.dart';

/// Tile of [ListTile] for [SettingsScreen]
class SettingsTile extends StatelessWidget {
  const SettingsTile({
    super.key,
    required this.icon,
    required this.title,
    required this.onClick,
    required this.isDebug,
  });

  /// Icon which should show with this tile
  final String icon;

  /// Title which should show inside this tile 
  final String title;

  /// Function which should run when user click on that
  final Function onClick;

  /// Logical value which say should or not show this only with debug mode
  final bool isDebug;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        icon,
        colorFilter: IbmcColorScheme.light().primary.toColorFilter,
      ),
      onTap: () => onClick(),
      title: Text(title),
    );
  }
}
