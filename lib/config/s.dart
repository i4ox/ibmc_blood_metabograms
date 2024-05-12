import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:ibmc_blood_metabograms/l10n/app_localizations.g.dart';

/// Strings
class S {
  static const en = Locale('en');
  static const ru = Locale('ru');

  static const supportedLocales = [en, ru];

  static const localizationDelegates = <LocalizationsDelegate>[
    AppLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  static AppLocalizations of(BuildContext context) => AppLocalizations.of(context)!;
}
