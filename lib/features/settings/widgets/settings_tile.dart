import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ibmc_blood_metabograms/uikit/colors/ibmc_color_scheme.dart';
import 'package:ibmc_blood_metabograms/util/extensions/color_filter.dart';

class SettingsTile extends StatelessWidget {
  const SettingsTile({
    super.key,
    required this.icon,
    required this.title,
    required this.onClick,
    required this.isDebug,
  });

  final String icon;

  final String title;

  final Function onClick;

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
