import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ibmc_blood_metabograms/assets/resources.dart';
import 'package:ibmc_blood_metabograms/config/app_config.dart';
import 'package:ibmc_blood_metabograms/features/settings/widgets/settings_tile.dart';
import 'package:ibmc_blood_metabograms/l10n/s.dart';
import 'package:ibmc_blood_metabograms/service_locator.dart';

class SettingsList extends StatelessWidget {
  Widget _createSettingsItem(BuildContext context, int index) {
    final settings = _getSettings(context);
    if (settings[index].isDebug && getIt<AppConfig>().environmentType == "debug") {
      return settings[index];
    } else if (settings[index].isDebug && getIt<AppConfig>().environmentType == "release") {
      return Container();
    }
    return settings[index];
  }

  List<SettingsTile> _getSettings(BuildContext context) {
    return [
      SettingsTile(
        icon: SvgIcons.translate,
        title: S.of(context).changeLanguage,
        onClick: () => getIt<GoRouter>().go("/settings/l10n"),
        isDebug: false,
      ),
      SettingsTile(
        icon: SvgIcons.theme,
        title: Theme.of(context).brightness == Brightness.light
            ? S.of(context).switchLightTheme
            : S.of(context).switchDarkTheme,
        onClick: () {},
        isDebug: false,
      ),
      SettingsTile(
        icon: SvgIcons.devmode,
        title: S.of(context).devMode,
        onClick: () => getIt<GoRouter>().go("/settings/devmode"),
        isDebug: true,
      ),
      SettingsTile(
        icon: SvgIcons.uikit,
        title: S.of(context).uikit,
        onClick: () {},
        isDebug: true,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: _getSettings(context).length,
      separatorBuilder: (context, index) => Divider(
        color: Color(0xFF292D32).withOpacity(0.2),
      ),
      itemBuilder: (context, index) => _createSettingsItem(context, index),
    );
  }
}
