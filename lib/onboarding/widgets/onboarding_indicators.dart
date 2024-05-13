import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ibmc_blood_metabograms/home/home.dart';
import 'package:ibmc_blood_metabograms/service_locator.dart';
import 'package:ibmc_blood_metabograms/uikit/colors/app_color_scheme.dart';
import 'package:ibmc_blood_metabograms/uikit/text/app_text_scheme.dart';

/// Widget which build the indicators and buttons for [OnboardingScreen]
class OnboardingIndicators extends StatefulWidget {
  final VoidCallback onClick;
  final int countOfDots;
  final int currentPage;

  const OnboardingIndicators({
    super.key,
    required this.currentPage,
    required this.onClick,
    required this.countOfDots,
  });

  @override
  State<OnboardingIndicators> createState() => _OnboardingPageIndicatorsState();
}

/// State for [OnboardingIndicators]
class _OnboardingPageIndicatorsState extends State<OnboardingIndicators> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColorScheme.light().surface,
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 35.0, left: 20.0, right: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            widget.countOfDots - 1 == widget.currentPage
                ? Container()
                : TextButton(
                    onPressed: () {
                      getIt<HomeBloc>().add(HomeCloseOnboarding());
                      context.go('/dashboard');
                    },
                    child: Text(
                      "Пропустить",
                      style: AppTextScheme.onboarding().label.copyWith(
                            color: AppColorScheme.light().danger,
                          ),
                    ),
                  ),
            widget.countOfDots - 1 != widget.currentPage
                ? TextButton(
                    onPressed: widget.onClick,
                    child: Text(
                      "Далее",
                      style: AppTextScheme.onboarding().label.copyWith(
                            color: AppColorScheme.light().secondary,
                          ),
                    ),
                  )
                : TextButton(
                    onPressed: () {
                      getIt<HomeBloc>().add(HomeCloseOnboarding());
                      context.go('/dashboard');
                    },
                    child: Text(
                      "Начать",
                      style: AppTextScheme.onboarding().label.copyWith(
                            color: AppColorScheme.light().secondary,
                          ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
