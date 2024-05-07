import 'package:flutter/material.dart';
import 'package:ibmc_blood_metabograms/onboarding/widgets/next_button.dart';
import 'package:ibmc_blood_metabograms/uikit/colors/ibmc_color_palette.dart';
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
                    child: Text("Skip", style: IbmcTextScheme.onboarding().label,),
                ),
            // Row(
            //   children: _buildPageIndicators(widget.currentPage),
            // ),
            NextButton(
              isLastPage: widget.countOfDots - 1 == widget.currentPage,
              onClick: widget.onClick,
            ),
          ],
        ),
      ),
    );
  }
}
