import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ibmc_blood_metabograms/assets/resources.dart';
import 'package:ibmc_blood_metabograms/config/app_config.dart';
import 'package:ibmc_blood_metabograms/features/settings/widgets/change_theme_alert_dialog.dart';
import 'package:ibmc_blood_metabograms/features/settings/widgets/widgets.dart';
import 'package:ibmc_blood_metabograms/l10n/s.dart';
import 'package:ibmc_blood_metabograms/service_locator.dart';
import 'package:ibmc_blood_metabograms/uikit/uikit.dart';

/// List which print all settings inside [SettingsScreen]
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

  /// Helper method which create list of all settings
  List<SettingsTile> _getSettings(BuildContext context) {
    return [
      SettingsTile(
        icon: SvgVectors.translateSvg,
        title: S.of(context).changeLanguage,
        onClick: () => getIt<GoRouter>().go("/settings/l10n"),
        isDebug: false,
      ),
      SettingsTile(
        icon: SvgVectors.themeSvg,
        title: S.of(context).changeTheme,
        onClick: () => ChangeThemeAlertDialog.show(context),
        isDebug: false,
      ),
      SettingsTile(
        icon: SvgVectors.devmodeSvg,
        title: S.of(context).devMode,
        onClick: () => getIt<GoRouter>().go("/settings/devmode"),
        isDebug: true,
      ),
      SettingsTile(
        icon: SvgVectors.uikitSvg,
        title: S.of(context).uikit,
        onClick: () => getIt<GoRouter>().go("/uikit"),
        isDebug: true,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return AppListView(
      itemBuilder: _createSettingsItem,
      itemCount: _getSettings(context).length,
    );
  }
}
