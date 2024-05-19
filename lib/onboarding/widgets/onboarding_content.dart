import 'package:flutter/material.dart';
import 'package:kmk_viewer/assets/resources.dart';
import 'package:kmk_viewer/l10n/s.dart';
import 'package:kmk_viewer/uikit/uikit.dart';

/// Widget which build the content for [OnboardingScreen]
class OnboardingContent extends StatelessWidget {
  const OnboardingContent({
    super.key,
    required this.numPages,
    required this.currentIndex,
  });

  final int numPages;

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    final _containersImages = _generateImages(context);
    return Container(
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                ),
                child: _containersImages[currentIndex],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: MediaQuery.of(context).size.height * 0.48,
            child: Container(
              padding: const EdgeInsets.only(
                top: 20.0,
                left: 20.0,
                right: 20.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    _getOnboardingTitle(context, currentIndex),
                    textAlign: TextAlign.center,
                    style: AppTextScheme.onboarding().headline,
                  ),
                  const SizedBox(height: 50.0),
                  Text(
                    _getOnboardingDescription(context, currentIndex),
                    textAlign: TextAlign.start,
                    style: AppTextScheme.onboarding().text,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  static List<Image> _generateImages(BuildContext context) {
    final _color = AppColorScheme.of(context).primary;
    return [
      Image(
        image: AssetImage(Images.onboarding1),
        height: 415,
        width: 415,
        color: _color,
      ),
      Image(
        image: AssetImage(Images.onboarding2),
        height: 415,
        width: 415,
        color: _color,
      ),
      Image(
        image: AssetImage(Images.onboarding3),
        height: 415,
        width: 415,
        color: _color,
      ),
    ];
  }
}

/// Helper function which return the title of active part of [OnboardingScreen]
String _getOnboardingTitle(BuildContext context, int index) {
  List<String> titles = <String>[
    S.of(context).firstOnboardingTitle,
    S.of(context).secondOnboardingTitle,
    S.of(context).thirdOnboardingTitle,
  ];
  return titles[index];
}

/// Helper function which return the description of active part of [OnboardingScreen]
String _getOnboardingDescription(BuildContext context, int index) {
  List<String> descriptions = <String>[
    S.of(context).firstOnboardingDescription,
    S.of(context).secondOnboardingDescription,
    S.of(context).thirdOnboardingDescription,
  ];
  return descriptions[index];
}
