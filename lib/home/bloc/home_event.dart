part of 'home_bloc.dart';

/// Event for [HomeBloc]
abstract class HomeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class HomeCheckOnboarding extends HomeEvent {}

class HomeCloseOnboarding extends HomeEvent {}
