import 'package:flutter/material.dart';

/// Application light colors palette
abstract class AppLightColorPalette {
  static const white = const Color(0xFFFFFFFF);

  static const darkWhite = const Color(0xFFE1E1E1);

  static const black = const Color(0xFF212325);

  static const grey = const Color(0xFF6C7278);

  static const blue = const Color(0xFF246BFD);

  static const red = const Color(0xFFFF968E);

  static const green = const Color(0xFF5DCD9B);
}

/// Application dark colors palette
abstract class AppDarkColorPalette {
  static const black = const Color(0xFF212325);

  static const lightBlack = const Color(0xFF3A3D46);

  static const white = const Color(0xFFFFFFFF);

  static const grey = const Color(0xFF6C7278);

  static const blue = const Color(0xFF246BFD);

  static const red = const Color(0xFFFF968E);

  static const green = const Color(0xFF5DCD9B);
}
