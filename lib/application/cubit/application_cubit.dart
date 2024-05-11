import 'dart:io' show Platform;

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibmc_blood_metabograms/application/cubit/application_state.dart';
import 'package:ibmc_blood_metabograms/persistence/storage/onboarding_shown/onboarding_shown_storage.dart';
import 'package:ibmc_blood_metabograms/service_locator.dart';
import 'package:logger/logger.dart';

class ApplicationCubit extends Cubit<ApplicationState> {
  ApplicationCubit(): super(ApplicationInitial());

  void checkOnboardingShown() async {
    
    final isOnboardingShown = OnboardingShownStorage();

    final isMobileApp = Platform.isAndroid || Platform.isIOS;
  
    isOnboardingShown.setIsOnboardingShown(value: false);
    getIt<Logger>().d('IsOnboardingShown: ${isOnboardingShown.getIsOnboardingShown()}');
    if (isMobileApp && isOnboardingShown.getIsOnboardingShown() == false) {
      isOnboardingShown.setIsOnboardingShown(
        value: true,
      );
      emit(ApplicationOnboarding());
    } else {
      closeOnboarding();
    }
  }

  void closeOnboarding() => emit(ApplicationClean());
}
