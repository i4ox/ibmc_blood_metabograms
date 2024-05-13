import 'package:flutter/material.dart';

/// Extension for color to use color filter
extension ToColorFilter on Color {
  ColorFilter? get toColorFilter {
    return ColorFilter.mode(this, BlendMode.srcIn);
  }
}
