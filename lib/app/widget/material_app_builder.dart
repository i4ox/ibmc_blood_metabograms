import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ibmc_blood_metabograms/config/app_config.dart';
import 'package:ibmc_blood_metabograms/features/settings/bloc/l10n/l10n_bloc.dart';
import 'package:ibmc_blood_metabograms/features/settings/bloc/theme/theme_bloc.dart';
import 'package:ibmc_blood_metabograms/l10n/s.dart';
import 'package:ibmc_blood_metabograms/service_locator.dart';
import 'package:ibmc_blood_metabograms/uikit/theme/app_theme_data.dart';

/// Builder which build the MaterialApp with router
class MaterialAppBuilder extends StatelessWidget {
  const MaterialAppBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<L10nBloc, L10nState>(
      builder: (context, state) {
        var _locale = state.locale;
        return BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, state) => MaterialApp.router(
            debugShowCheckedModeBanner: getIt<AppConfig>().environmentType == "debug" ? true : false,
            supportedLocales: S.supportedLocales,
            locale: _locale,
            localizationsDelegates: S.localizationDelegates,
            routerConfig: getIt<GoRouter>(),
            theme: AppThemeData.lightTheme,
            darkTheme: AppThemeData.darkTheme,
            themeMode: state.themeMode,
          ),
        );
      },
    );
  }
}
