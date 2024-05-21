part of 'home_bloc.dart';

/// Event part of [HomeBloc]
abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object?> get props => [];
}

/// Event which say to check should or not show the [OnboardingScreen]
class HomeCheckOnboarding extends HomeEvent {}

/// Event which say to close the [OnboardingScreen]
class HomeCloseOnboarding extends HomeEvent {}

class HomeCheckAuth extends HomeEvent {}

class HomeCloseAuth extends HomeEvent {}
