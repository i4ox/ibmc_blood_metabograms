import 'package:flutter/material.dart';
import 'package:ibmc_blood_metabograms/navigation/app_router.dart';

/// Application widget
class IbmcBloodMetabogramsApplication extends StatefulWidget {
  const IbmcBloodMetabogramsApplication({super.key});

  @override
  State<IbmcBloodMetabogramsApplication> createState() => _IbmcBloodMetabogramsApplicationState();
}

/// State for [IbmcBloodMetabogramsApplication] widget
class _IbmcBloodMetabogramsApplicationState extends State<IbmcBloodMetabogramsApplication> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
    );    
  }
}
