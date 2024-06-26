import 'dart:io' show Platform;

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kmk_viewer/home/home.dart';
import 'package:kmk_viewer/persistence/storage/onboarding_shown/onboarding_shown_storage.dart';

part 'home_event.dart';
part 'home_state.dart';

/// Bloc class for [HomeScreen]
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeCheckOnboarding>(_checkOnboarding);
    on<HomeCloseOnboarding>(_closeOnboarding);
    on<HomeCloseAuth>(_closeAuth);
  }

  Future<void> _closeAuth(HomeCloseAuth event, Emitter<HomeState> emit) async {
    emit(HomeClean());
  }

  /// Helper function which close the [OnboardingScreen]
  Future<void> _closeOnboarding(HomeEvent event, Emitter<HomeState> emit) async {
    emit(HomeAuth());
  }

  /// Helper function which check should or not show the [OnboardingScreen]
  Future<void> _checkOnboarding(HomeEvent event, Emitter<HomeState> emit) async {
    final isOnboardingShown = OnboardingShownStorage();
    final isMobile = Platform.isIOS || Platform.isAndroid;

    if (isOnboardingShown.getIsOnboardingShown() == false && isMobile) {
      isOnboardingShown.setIsOnboardingShown(
        value: true,
      );
      emit(HomeOnboarding());
    } else {
      emit(HomeAuth());
    }
  }
}
