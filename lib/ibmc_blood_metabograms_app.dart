import 'package:flutter/material.dart';
import 'package:ibmc_blood_metabograms/app/app.dart';

/// Application widget
class IbmcBloodMetabogramsApplication extends StatefulWidget {
  const IbmcBloodMetabogramsApplication({super.key});

  @override
  State<IbmcBloodMetabogramsApplication> createState() =>
      _IbmcBloodMetabogramsApplicationState();
}

/// State for [IbmcBloodMetabogramsApplication] widget
class _IbmcBloodMetabogramsApplicationState
    extends State<IbmcBloodMetabogramsApplication> {
  @override
  Widget build(BuildContext context) {
    return App();
  }
}
