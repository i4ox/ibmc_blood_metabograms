import 'package:flutter/material.dart';
import 'package:ibmc_blood_metabograms/l10n/s.dart';
import 'package:ibmc_blood_metabograms/uikit/colors/app_color_scheme.dart';
import 'package:ibmc_blood_metabograms/uikit/text/app_text_scheme.dart';

/// Widget which build the content for [OnboardingScreen]
class OnboardingContent {
  static const List<Image> _containersImages = [
    Image(
      image: AssetImage('assets/images/onboarding_1.png'),
      height: 415,
      width: 415,
    ),
    Image(
      image: AssetImage('assets/images/onboarding_2.png'),
      height: 415,
      width: 415,
    ),
    Image(
      image: AssetImage('assets/images/onboarding_3.png'),
      height: 415,
      width: 415,
    ),
  ];

  /// Custom build method for [OnboardingContent] widget
  static List<Widget> build(BuildContext context, int numPages) {
    return List.generate(numPages, (index) {
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
                  child: _containersImages[index],
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: MediaQuery.of(context).size.height * 0.48,
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      offset: Offset(0, -2),
                      blurRadius: 10,
                    ),
                  ],
                  color: AppColorScheme.light().surface,
                  borderRadius: BorderRadiusDirectional.only(
                    topStart: Radius.circular(20),
                    topEnd: Radius.circular(20),
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.only(
                    top: 20.0,
                    left: 5.0,
                    right: 5.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        _getOnboardingTitle(context, index),
                        textAlign: TextAlign.center,
                        style: AppTextScheme.onboarding().headline.copyWith(
                              fontFamily: "PlusJakartaSans",
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      const SizedBox(height: 30.0),
                      Text(
                        _getOnboardingDescription(context, index),
                        textAlign: TextAlign.center,
                        style: AppTextScheme.onboarding().label.copyWith(
                              height: 2,
                              fontSize: 16,
                              fontFamily: "PlusJakartaSans",
                              color: AppColorScheme.light().textFieldLabel,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
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
