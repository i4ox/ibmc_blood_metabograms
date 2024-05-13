import 'package:flutter/material.dart';
import 'package:ibmc_blood_metabograms/uikit/app_sizes.dart';

const _double57 = 57.0;
const _double45 = 45.0;
const _double36 = 36.0;
const _double32 = 32.0;
const _double28 = 28.0;
const _double24 = 24.0;
const _double22 = 22.0;
const _double11 = 11.0;

/// Text style for IBMC app
enum IbmcTextStyle {
  displayLarge(TextStyle(fontFamily: 'Inter', fontSize: _double57, height: 57 / 64)),
  displayMedium(TextStyle(fontFamily: 'Inter', fontSize: _double45, height: 45 / 52)),
  displaySmall(TextStyle(fontFamily: 'Inter', fontSize: _double36, height: 36 / 44)),
  headlineLarge(TextStyle(fontFamily: 'Inter', fontSize: _double32, height: 32 / 40)),
  headlineMedium(TextStyle(fontFamily: 'Inter', fontSize: _double28, height: 28 / 36)),
  headlineSmall(TextStyle(fontFamily: 'Inter', fontSize: _double24, height: 24 / 32)),
  titleLarge(TextStyle(fontFamily: 'Inter', fontSize: _double22, height: 22 / 28)),
  titleMedium(
    TextStyle(
      fontFamily: 'Inter',
      fontSize: AppSizes.double16,
      fontWeight: FontWeight.w500,
      height: 16 / 24,
    ),
  ),
  titleSmall(
    TextStyle(
      fontFamily: 'Inter',
      fontSize: AppSizes.double14,
      fontWeight: FontWeight.w500,
      height: 14 / 20,
    ),
  ),
  labelLarge(
    TextStyle(
      fontFamily: 'Inter',
      fontSize: AppSizes.double14,
      fontWeight: FontWeight.w500,
      height: 14 / 20,
    ),
  ),
  labelMedium(
    TextStyle(
      fontFamily: 'Inter',
      fontSize: AppSizes.double12,
      fontWeight: FontWeight.w500,
      height: 12 / 16,
    ),
  ),
  labelSmall(
    TextStyle(
      fontFamily: 'Inter',
      fontSize: _double11,
      fontWeight: FontWeight.w500,
      height: 11 / 16,
    ),
  ),
  bodyLarge(TextStyle(fontFamily: 'Inter', fontSize: AppSizes.double16, height: 16 / 24)),
  bodyMedium(TextStyle(fontFamily: 'Inter', fontSize: AppSizes.double14, height: 14 / 20)),
  bodySmall(TextStyle(fontFamily: 'Inter', fontSize: AppSizes.double12, height: 12 / 16));

  final TextStyle value;

  const IbmcTextStyle(this.value);
}
