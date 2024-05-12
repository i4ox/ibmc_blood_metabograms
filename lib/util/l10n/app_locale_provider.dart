import 'package:flutter/material.dart';
import 'package:ibmc_blood_metabograms/l10n/app_locales.dart';

class AppLocaleProvider extends ChangeNotifier {
  Locale _locale = Locale("en");
  Locale get locale => _locale;
  void setLocale(Locale locale) {
    if (!AppLocales.locales.contains(locale)) return;
    _locale = locale;
    notifyListeners();
  }

  void clearLocale() {
    _locale = Locale("en");
    notifyListeners();
  }
}
