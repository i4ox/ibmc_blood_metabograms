import 'package:flutter/material.dart';
import 'package:ibmc_blood_metabograms/uikit/colors/ibmc_color_palette.dart';

/// Ibmc brand color scheme
class IbmcColorScheme extends ThemeExtension<IbmcColorScheme> {

  /// Can be used as an accent color for buttons, switches, labels, icons, etc.
  final Color primary;

  /// The color of the text on [primary]
  final Color onPrimary;

  /// Secondary branding color for the app
  final Color secondary;

  /// The color of the text on [secondary]
  final Color onSecondary;

  /// Can be used as an background color for cards, alerts, dialogs, bottom sheets, etc.
  final Color surface;

  /// Secondary surface color
  final Color surfaceSecondary;

  /// The color of the text on [surface] and [surfaceSecondary]
  final Color onSurface;

  /// Background color
  final Color background;

  /// Secondary background color
  final Color backgroundSecondary;

  /// The color of the text on [background] and [backgroundSecondary]
  final Color onBackground;

  /// Can be used as an accent color for text/background of an error message/destructive button.
  final Color danger;

  /// Secondary danger color
  final Color dangerSecondary;

  /// The color of the text on [danger] and [dangerSecondary]
  final Color onDanger;

  /// Can be used as an accent color for text/background with informational success messages.
  final Color positive;

  /// The color of the text on [positive]
  final Color onPositive;

  /// Color of inactive elements
  final Color inactive;

  /// Can be uses as an accent color of the loading effect
  final Color shimmer;

  /// Color of text in text field.
  final Color textField;

  /// Color of label in text field.
  final Color textFieldLabel;

  /// Color of helper text in text field.
  final Color textFieldHelper;

  IbmcColorScheme.light()
  : primary = IbmcColorPalette.blue,
    onPrimary = IbmcColorPalette.white,
    secondary = IbmcColorPalette.orange,
    onSecondary = IbmcColorPalette.white,
    surface = IbmcColorPalette.white,
    surfaceSecondary = IbmcColorPalette.darkestWhite,
    onSurface = IbmcColorPalette.dark,
    background = IbmcColorPalette.white,
    backgroundSecondary = IbmcColorPalette.darkestWhite,
    onBackground = IbmcColorPalette.dark,
    danger = IbmcColorPalette.red,
    dangerSecondary = IbmcColorPalette.lighterRed,
    onDanger = IbmcColorPalette.white,
    inactive = IbmcColorPalette.lightGrey,
    positive = IbmcColorPalette.green,
    onPositive = IbmcColorPalette.white,
    shimmer = IbmcColorPalette.lightGrey,
    textField = IbmcColorPalette.dark,
    textFieldLabel = IbmcColorPalette.dark,
    textFieldHelper = IbmcColorPalette.dark.withOpacity(0.5);

  // ignore: unused_element
  const IbmcColorScheme._({
    required this.primary,
    required this.onPrimary,
    required this.secondary,
    required this.onSecondary,
    required this.surface,
    required this.surfaceSecondary,
    required this.onSurface,
    required this.background,
    required this.backgroundSecondary,
    required this.onBackground,
    required this.danger,
    required this.dangerSecondary,
    required this.onDanger,
    required this.positive,
    required this.onPositive,
    required this.inactive,
    required this.shimmer,
    required this.textField,
    required this.textFieldLabel,
    required this.textFieldHelper,
  });

  @override
  ThemeExtension<IbmcColorScheme> copyWith({
    Color? primary,
    Color? onPrimary,
    Color? secondary,
    Color? onSecondary,
    Color? surface,
    Color? surfaceSecondary,
    Color? onSurface,
    Color? background,
    Color? backgroundSecondary,
    Color? onBackground,
    Color? danger,
    Color? dangerSecondary,
    Color? onDanger,
    Color? positive,
    Color? onPositive,
    Color? inactive,
    Color? shimmer,
    Color? textField,
    Color? textFieldLabel,
    Color? textFieldHelper,
  }) {
    return IbmcColorScheme._(
      primary: primary ?? this.primary,
      onPrimary: onPrimary ?? this.onPrimary,
      secondary: secondary ?? this.secondary,
      onSecondary: onSecondary ?? this.onSecondary,
      surface: surface ?? this.surface,
      surfaceSecondary: surfaceSecondary ?? this.surfaceSecondary,
      onSurface: onSurface ?? this.onSurface,
      background: background ?? this.background,
      backgroundSecondary: backgroundSecondary ?? this.backgroundSecondary,
      onBackground: onBackground ?? this.onBackground,
      danger: danger ?? this.danger,
      dangerSecondary: dangerSecondary ?? this.dangerSecondary,
      onDanger: onDanger ?? this.onDanger,
      positive: positive ?? this.positive,
      onPositive: onPositive ?? this.onPositive,
      inactive: inactive ?? this.inactive,
      shimmer: shimmer ?? this.shimmer,
      textField: textField ?? this.textField,
      textFieldLabel: textFieldLabel ?? this.textFieldLabel,
      textFieldHelper: textFieldHelper ?? this.textFieldHelper,
    );
  }

  @override
  ThemeExtension<IbmcColorScheme> lerp(covariant ThemeExtension<IbmcColorScheme>? other, double t) {
    if (other is! IbmcColorScheme) return this;

    return IbmcColorScheme._(
      primary: Color.lerp(primary, other.primary, t)!,
      onPrimary: Color.lerp(onPrimary, other.onPrimary, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      onSecondary: Color.lerp(onSecondary, other.onSecondary, t)!,
      surface: Color.lerp(surface, other.surface, t)!,
      surfaceSecondary: Color.lerp(surfaceSecondary, other.surfaceSecondary, t)!,
      onSurface: Color.lerp(onSurface, other.onSurface, t)!,
      background: Color.lerp(background, other.background, t)!,
      backgroundSecondary: Color.lerp(backgroundSecondary, other.backgroundSecondary, t)!,
      onBackground: Color.lerp(onBackground, other.onBackground, t)!,
      danger: Color.lerp(danger, other.danger, t)!,
      dangerSecondary: Color.lerp(dangerSecondary, other.dangerSecondary, t)!,
      onDanger: Color.lerp(onDanger, other.onDanger, t)!,
      positive: Color.lerp(positive, other.positive, t)!,
      onPositive: Color.lerp(onPositive, other.onPositive, t)!,
      inactive: Color.lerp(inactive, other.inactive, t)!,
      shimmer: Color.lerp(shimmer, other.shimmer, t)!,
      textField: Color.lerp(textField, other.textField, t)!,
      textFieldLabel: Color.lerp(textFieldLabel, other.textFieldLabel, t)!,
      textFieldHelper: Color.lerp(textFieldHelper, other.textFieldHelper, t)!,
    );
  }

  /// Returns [IbmcColorScheme] from [context]
  static IbmcColorScheme of(BuildContext context) => Theme.of(context).extension<IbmcColorScheme>()!;
}
