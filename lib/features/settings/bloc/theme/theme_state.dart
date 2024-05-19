part of 'theme_bloc.dart';

/// State part of [ThemeBloc]
class ThemeState extends Equatable {
  final ThemeMode themeMode;

  const ThemeState({
    required this.themeMode,
  });

  /// Initial state of [ThemeState]
  factory ThemeState.initial() {
    return const ThemeState(themeMode: ThemeMode.system);
  }

  /// CopyWith method which help replace existed [ThemeState] to new state
  ThemeState copyWith(ThemeMode? themeMode) {
    return ThemeState(themeMode: themeMode ?? this.themeMode);
  }

  @override
  List<Object?> get props => [themeMode];
}
