part of 'app_bloc.dart';

/// Event for [AppBloc]
abstract class AppEvent extends Equatable {
  const AppEvent();

  @override
  List<Object?> get props => [];
}

class AppChangeLocale extends AppEvent {
  const AppChangeLocale({
    required this.locale,
  });

  final Locale locale;

  @override
  List<Object?> get props => [locale];
}
