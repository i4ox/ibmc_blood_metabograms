part of 'l10n_bloc.dart';

/// State part of [L10nBloc]
class L10nState extends Equatable {
  final Locale locale;

  const L10nState({required this.locale});

  /// Initial state of [L10nState]
  factory L10nState.initial() {
    return const L10nState(locale: S.en);
  }

  /// CopyWith method which help replace existed [L10nState] to new state
  L10nState copyWith(Locale? locale) {
    return L10nState(locale: locale ?? this.locale);
  }

  @override
  List<Object?> get props => [locale];
}
