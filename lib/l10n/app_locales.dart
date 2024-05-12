import 'package:flutter/material.dart';

/// All supported locales for app
abstract class AppLocales {
  const AppLocales();

  static const locales = [
    const Locale("en", "US"),
    const Locale("ru", "RU"),
  ];
}
