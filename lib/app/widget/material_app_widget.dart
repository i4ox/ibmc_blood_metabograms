import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ibmc_blood_metabograms/config/app_config.dart';
import 'package:ibmc_blood_metabograms/config/s.dart';
import 'package:ibmc_blood_metabograms/service_locator.dart';
import 'package:ibmc_blood_metabograms/uikit/theme/ibmc_theme_data.dart';

/// MaterialApp custom widget for [App]
class MaterialAppWidget extends StatefulWidget {
  
  final Locale locale;

  const MaterialAppWidget({
    super.key,
    required this.locale,
  });

  @override
  State<StatefulWidget> createState() => _MaterialAppWidgetState();
}

class _MaterialAppWidgetState extends State<MaterialAppWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: getIt<AppConfig>().environmentType == "debug" ? true : false,
      supportedLocales: S.supportedLocales,
      locale: widget.locale,
      localizationsDelegates: S.localizationDelegates,
      routerConfig: getIt<GoRouter>(),
      theme: IbmcThemeData.lightTheme,
      themeMode: ThemeMode.light,
    );
  }
}
