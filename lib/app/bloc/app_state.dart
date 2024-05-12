part of 'app_bloc.dart';

/// State for [AppBloc]
abstract class AppState extends Equatable {
  const AppState();

  @override
  List<Object?> get props => [];
}

class AppInitial extends AppState {}
