import 'package:flutter_svg/flutter_svg.dart';

/// Utils which help with images
class ImageUtils {
  static const String onboardingFirstAsset = 'assets/svg/onboarding_1.svg';

  /// Precache the svg type of images
  static void svgPrecacheImages() {
    const cacheSvgImages = [
      ImageUtils.onboardingFirstAsset,
    ];

    for (String element in cacheSvgImages) {
      var loader = SvgAssetLoader(element);
      svg.cache.putIfAbsent(loader.cacheKey(null), () => loader.loadBytes(null));
    }
  }
}
