import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kmk_viewer/assets/resources.dart';
import 'package:kmk_viewer/config/app_config.dart';
import 'package:kmk_viewer/features/settings/widgets/widgets.dart';
import 'package:kmk_viewer/l10n/s.dart';
import 'package:kmk_viewer/service_locator.dart';
import 'package:kmk_viewer/uikit/buttons/app_button.dart';
import 'package:kmk_viewer/uikit/uikit.dart';

/// Settings screen widget
class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: S.of(context).settings,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppButton(
              text: S.of(context).changeLanguage,
              icon: SvgVectors.translateSvg,
              onClick: () => getIt<GoRouter>().go("/settings/l10n"),
            ),
            const SizedBox(height: 10),
            AppButton(
              text: S.of(context).changeTheme,
              icon: SvgVectors.themeSvg,
              onClick: () => ChangeThemeAlertDialog.show(context),
            ),
            const SizedBox(height: 10),
            getIt<AppConfig>().environmentType == "debug"
                ? Column(
                    children: [
                      AppButton(
                        text: S.of(context).devMode + " (Debug)",
                        icon: SvgVectors.devmodeSvg,
                        onClick: () => getIt<GoRouter>().go("/settings/devmode"),
                      ),
                      const SizedBox(height: 10),
                    ],
                  )
                : Container(),
            getIt<AppConfig>().environmentType == "debug"
                ? Column(
                    children: [
                      AppButton(
                        text: S.of(context).uikit + " (Debug)",
                        icon: SvgVectors.uikitSvg,
                        onClick: () => getIt<GoRouter>().go("/uikit"),
                      ),
                      const SizedBox(height: 10),
                    ],
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
