import 'dart:io' show Platform;

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibmc_blood_metabograms/home/home.dart';
import 'package:ibmc_blood_metabograms/persistence/storage/onboarding_shown/onboarding_shown_storage.dart';

part 'home_event.dart';
part 'home_state.dart';

/// Bloc class for [HomeScreen]
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(): super(HomeInitial()) {
    on<HomeCheckOnboarding>(_checkOnboarding);
    on<HomeCloseOnboarding>(_closeOnboarding);
  }
}

void _closeOnboarding(HomeEvent event, Emitter<HomeState> emit) {
  emit(HomeClean());
}

void _checkOnboarding(HomeEvent event, Emitter<HomeState> emit) {
  final isOnboardingShown = OnboardingShownStorage();
  final isMobile = Platform.isIOS || Platform.isAndroid;

  if (isOnboardingShown.getIsOnboardingShown() == false && isMobile) {
    isOnboardingShown.setIsOnboardingShown(
      value: true,
    );
    emit(HomeOnboarding());
  } else {
    emit(HomeClean());
  }
}
