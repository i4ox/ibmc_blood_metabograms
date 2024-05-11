import 'package:equatable/equatable.dart';

abstract class ApplicationState extends Equatable {}

class ApplicationInitial extends ApplicationState {
  @override
  List<Object?> get props => [];
}

class ApplicationOnboarding extends ApplicationState {
  @override
  List<Object?> get props => [];
}

class ApplicationClean extends ApplicationState {
  @override
  List<Object?> get props => [];
}
