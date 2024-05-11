import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ibmc_blood_metabograms/app/app.dart';
import 'package:ibmc_blood_metabograms/config/app_config.dart';
import 'package:ibmc_blood_metabograms/home/home.dart';
import 'package:ibmc_blood_metabograms/service_locator.dart';
import 'package:ibmc_blood_metabograms/uikit/theme/ibmc_theme_data.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AppBloc(),
        ),
        BlocProvider(
          create: (context) => getIt<HomeBloc>(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: getIt<AppConfig>().environmentType == "debug" ? true : false,
        routerConfig: getIt<GoRouter>(),
        theme: IbmcThemeData.lightTheme,
        themeMode: ThemeMode.light,
      ),
    );
  }
}
