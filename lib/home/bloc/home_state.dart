part of 'home_bloc.dart';

/// State part of [HomeBloc]
abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object?> get props => [];
}

/// Initial state for [HomeScreen]
class HomeInitial extends HomeState {}

/// State of [HomeScreen] when onboarding shown
class HomeOnboarding extends HomeState {}

/// State of [HomeScreen] when updates onboarding shown
class HomeUpdatesOnboarding extends HomeState {}

/// State of [HomeScreen] when main content shown
class HomeClean extends HomeState {}
