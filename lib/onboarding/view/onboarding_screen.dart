import 'package:flutter/material.dart';
import 'package:ibmc_blood_metabograms/onboarding/widgets/onboarding_page.dart';
import 'package:ibmc_blood_metabograms/onboarding/widgets/onboarding_page_indicators.dart';

/// Onboarding screen widget
class OnboardingScreen extends StatefulWidget {
  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState(); 
}

/// State for [OnboardingScreen]
class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _numPages = 3;

  double getImageTopPadding(int page) {
    return 0.0;
  }

  final PageController _pageController = PageController(initialPage: 0);

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: PageView(
                allowImplicitScrolling: true,
                physics: NeverScrollableScrollPhysics(),
                controller: _pageController,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                children: OnboardingPage.build(context, _numPages),
              ),
            ),
            OnboardingPageIndicators(
              onClick: () {
                _pageController.nextPage(
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.ease,
                );
              },
              countOfDots: _numPages,
              currentPage: _currentPage,
            ),
          ],
        ),
      ),
    );
  }
}
