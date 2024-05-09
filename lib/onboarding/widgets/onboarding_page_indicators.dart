import 'package:flutter/material.dart';
import 'package:ibmc_blood_metabograms/uikit/colors/ibmc_color_palette.dart';
import 'package:ibmc_blood_metabograms/uikit/colors/ibmc_color_scheme.dart';
import 'package:ibmc_blood_metabograms/uikit/text/ibmc_text_scheme.dart';

class OnboardingPageIndicators extends StatefulWidget {
  final VoidCallback onClick;
  final int countOfDots;
  final int currentPage;

  const OnboardingPageIndicators({
    super.key,
    required this.currentPage,
    required this.onClick,
    required this.countOfDots,
  });

  @override
  State<OnboardingPageIndicators> createState() => _OnboardingPageIndicatorsState();
}

class _OnboardingPageIndicatorsState extends State<OnboardingPageIndicators> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: IbmcColorPalette.white,
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
                    onPressed: () {},
                    child: Text(
                      "Пропустить",
                      style: IbmcTextScheme.onboarding().label.copyWith(
                        color: IbmcColorScheme.light().danger,    
                      ),
                    ),
                ),
            TextButton(
              onPressed: widget.onClick,
              child: Text(
                widget.countOfDots - 1 == widget.currentPage
                    ? "Начать"
                    : "Далее",
                style: IbmcTextScheme.onboarding().label.copyWith(
                  color: IbmcColorScheme.light().secondary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}