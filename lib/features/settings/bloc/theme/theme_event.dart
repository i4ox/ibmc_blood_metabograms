part of 'theme_bloc.dart';

/// Event part of [ThemeBloc]
abstract class ThemeEvent extends Equatable {
  const ThemeEvent();

  @override
  List<Object?> get props => [];
}

/// Event which load and save new theme
class LoadTheme extends ThemeEvent {
  final ThemeMode themeMode;
  const LoadTheme({
    required this.themeMode,
  });

  @override
  List<Object?> get props => [themeMode];
}

/// Event which load saved theme
class LoadSavedTheme extends ThemeEvent {}
