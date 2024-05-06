import 'package:flutter/material.dart';
import 'package:ibmc_blood_metabograms/navigation/app_router.dart';
import 'package:ibmc_blood_metabograms/service_locator.dart';
import 'package:ibmc_blood_metabograms/uikit/theme/ibmc_theme_data.dart';


/// Application widget
class IbmcBloodMetabogramsApplication extends StatefulWidget {
  const IbmcBloodMetabogramsApplication({super.key});

  @override
  State<IbmcBloodMetabogramsApplication> createState() => _IbmcBloodMetabogramsApplicationState();
}

/// State for [IbmcBloodMetabogramsApplication] widget
class _IbmcBloodMetabogramsApplicationState extends State<IbmcBloodMetabogramsApplication> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: getIt<AppRouter>().config(),
      theme: IbmcThemeData.lightTheme,
      themeMode: ThemeMode.light,
    );    
  }
}
