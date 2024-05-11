import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibmc_blood_metabograms/application/cubit/application_cubit.dart';
import 'package:ibmc_blood_metabograms/application/cubit/application_state.dart';
import 'package:ibmc_blood_metabograms/navigation/app_router.dart';
import 'package:ibmc_blood_metabograms/onboarding/view/onboarding_screen.dart';
import 'package:ibmc_blood_metabograms/service_locator.dart';
import 'package:ibmc_blood_metabograms/uikit/bottom_navigation_bar/ibmc_bottom_navigation_bar.dart';

class ApplicationView extends StatelessWidget {
  const ApplicationView({super.key});

  @override
  Widget build(BuildContext context) {
    getIt<ApplicationCubit>().checkOnboardingShown();
    return Scaffold(
      body: BlocBuilder<ApplicationCubit, ApplicationState>(
        builder: (context, state) {
          return AnimatedSwitcher(
            duration: const Duration(milliseconds: 200),
            child: state is ApplicationOnboarding
                ? OnboardingScreen()
                : AutoTabsScaffold(
              routes: const [
                IbmcHomeRoute(),
                IbmcAnalysisRoute(),
                IbmcProfileRoute(),
                IbmcSettingsRoute(),
              ],
              bottomNavigationBuilder: (_, tabsRouter) {
                return IbmcBottomNavigationBar(
                  tabsRouter: tabsRouter,
                );
              },
            ),
          );
        },
      ),
    );
  }
}
