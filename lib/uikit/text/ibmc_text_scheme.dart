import 'package:flutter/material.dart';
import 'package:ibmc_blood_metabograms/uikit/text/ibmc_text_style.dart';

/// Text style scheme for IBMC app
class IbmcTextScheme extends ThemeExtension<IbmcTextScheme> {
  /// Text style with a size of 45/52.
  /// Use for short, important text or numerals.
  final TextStyle display;

  /// Text style with a size of 28/36.
  /// Use for marking primary passages of text or important regions of content.
  final TextStyle headline;

  /// Text style with a size of 12/16.
  /// Use for things like the text inside components or for very small text in the content body.
  final TextStyle label;

  const IbmcTextScheme._({
    required this.display,
    required this.headline,
    required this.label,
  });

  /// Base app text theme.
  IbmcTextScheme.base()
      : display = IbmcTextStyle.displayMedium.value,
        headline = IbmcTextStyle.headlineMedium.value,
        label = IbmcTextStyle.labelMedium.value;

  IbmcTextScheme.onboarding()
      : display = IbmcTextStyle.displaySmall.value,
        headline = IbmcTextStyle.headlineSmall.value,
        label = IbmcTextStyle.labelLarge.value;

  @override
  ThemeExtension<IbmcTextScheme> copyWith({
    TextStyle? display,
    TextStyle? headline,
    TextStyle? label,
  }) {
    return IbmcTextScheme._(
      display: display ?? this.display,
      headline: headline ?? this.headline,
      label: label ?? this.label,
    );
  }

  @override
  ThemeExtension<IbmcTextScheme> lerp(covariant ThemeExtension<IbmcTextScheme>? other, double t) {
    if (other is! IbmcTextScheme) {
      return this;
    }

    return IbmcTextScheme._(
      display: TextStyle.lerp(display, other.display, t)!,
      headline: TextStyle.lerp(headline, other.headline, t)!,
      label: TextStyle.lerp(label, other.label, t)!,
    );
  }

  /// Return text theme for app from context.
  static IbmcTextScheme of(BuildContext context) {
    return Theme.of(context).extension<IbmcTextScheme>() ?? _throwThemeExceptionFromFunc(context);
  }
}

Never _throwThemeExceptionFromFunc(BuildContext context) => throw Exception('$IbmcTextScheme not found in $context');
