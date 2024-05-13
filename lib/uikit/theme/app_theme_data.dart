import 'package:flutter/material.dart';
import 'package:ibmc_blood_metabograms/uikit/colors/app_color_scheme.dart';
import 'package:ibmc_blood_metabograms/uikit/text/app_text_scheme.dart';

/// Global theme for app
abstract class AppThemeData {
  // TODO: Add the dark theme
  static final _lightColorScheme = AppColorScheme.light();
  static final _textScheme = AppTextScheme.base();

  static final lightTheme = ThemeData(
    extensions: [_lightColorScheme, _textScheme],
    brightness: Brightness.light,
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: _lightColorScheme.primary,
      onPrimary: _lightColorScheme.onPrimary,
      secondary: _lightColorScheme.secondary,
      onSecondary: _lightColorScheme.onSecondary,
      error: _lightColorScheme.danger,
      onError: _lightColorScheme.onDanger,
      background: _lightColorScheme.background,
      onBackground: _lightColorScheme.onBackground,
      surface: _lightColorScheme.surface,
      onSurface: _lightColorScheme.onSurface,
    ),
    scaffoldBackgroundColor: _lightColorScheme.background,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: _lightColorScheme.background,
      selectedItemColor: _lightColorScheme.primary,
      unselectedItemColor: _lightColorScheme.inactive,
    ),
  );
}