import 'package:flutter/material.dart';
import 'package:ibmc_blood_metabograms/uikit/buttons/ibmc_animated_button.dart';
import 'package:ibmc_blood_metabograms/uikit/text/ibmc_text_scheme.dart';

class NextButton extends StatelessWidget {
  
  final bool isLastPage;
  final VoidCallback onClick;

  const NextButton({
    super.key,
    required this.isLastPage,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return IbmcAnimatedButton(
      onClick: () {
        if (isLastPage) {
        } else {
          onClick();
        }
      },
      duration: 200,
      child: isLastPage
            ? Text(
              "Start",
              style: IbmcTextScheme.onboarding().label,
            )
            : Icon(
                Icons.arrow_forward,
                // color: IbmcColorScheme.light().primary,
              ),
    );
  }
}
