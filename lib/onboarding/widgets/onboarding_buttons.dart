import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:ibmc_blood_metabograms/assets/resources.dart';
import 'package:ibmc_blood_metabograms/home/home.dart';
import 'package:ibmc_blood_metabograms/l10n/s.dart';
import 'package:ibmc_blood_metabograms/service_locator.dart';
import 'package:ibmc_blood_metabograms/uikit/colors/app_color_scheme.dart';
import 'package:ibmc_blood_metabograms/uikit/text/app_text_scheme.dart';
import 'package:ibmc_blood_metabograms/util/extensions/color_filter.dart';
import 'package:vector_graphics/vector_graphics_compat.dart';

/// Widget which build the indicators and buttons for [OnboardingScreen]
class OnboardingButtons extends StatelessWidget {
  const OnboardingButtons({
    super.key,
    required this.currentPage,
    required this.onClick,
    required this.countOfDots,
  });

  final VoidCallback onClick;

  final int countOfDots;

  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColorScheme.of(context).surface,
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 35.0, left: 20.0, right: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            countOfDots - 1 == currentPage
                ? Container()
                : TextButton(
                    onPressed: () {
                      getIt<HomeBloc>().add(HomeCloseOnboarding());
                      context.go('/dashboard');
                    },
                    child: Text(
                      S.of(context).skip,
                      style: AppTextScheme.onboarding().label.copyWith(color: AppColorScheme.of(context).textLabels),
                    ),
                  ),
            countOfDots - 1 != currentPage
                ? ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(AppColorScheme.of(context).primary),
                    ),
                    child: SvgPicture(
                      colorFilter: AppColorScheme.of(context).onPrimary.toColorFilter,
                      AssetBytesLoader(
                        SvgVectors.arrowRightSvg,
                      ),
                    ),
                    onPressed: onClick,
                  )
                : ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(AppColorScheme.of(context).primary),
                    ),
                    onPressed: () {
                      getIt<HomeBloc>().add(HomeCloseOnboarding());
                      context.go('/dashboard');
                    },
                    child: Text(
                      S.of(context).start,
                      style: AppTextScheme.onboarding().label.copyWith(
                        color: AppColorScheme.of(context).onPrimary,
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
