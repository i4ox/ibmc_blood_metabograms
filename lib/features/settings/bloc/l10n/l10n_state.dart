part of 'l10n_bloc.dart';

class L10nState extends Equatable {
  
  final Locale locale;

  const L10nState({
    required this.locale
  });

  factory L10nState.initial() {
    return const L10nState(locale: S.en);
  }

  L10nState copyWith(Locale? locale) {
    return L10nState(locale: locale ?? this.locale);
  }

  @override
  List<Object?> get props => [locale];
}
