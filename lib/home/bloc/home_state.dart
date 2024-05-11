part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object?> get props => [];
}

class HomeInitial extends HomeState {}

class HomeOnboarding extends HomeState {}

class HomeUpdatesOnboarding extends HomeState {}

class HomeClean extends HomeState {}
