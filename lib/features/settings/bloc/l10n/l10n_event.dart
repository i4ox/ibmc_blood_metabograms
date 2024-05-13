part of 'l10n_bloc.dart';

/// Event part of [L10Bloc]
abstract class L10nEvent extends Equatable {
  const L10nEvent();

  @override
  List<Object?> get props => [];
}

/// Event which load and save new locale
class LoadL10n extends L10nEvent {
  final Locale locale;
  const LoadL10n({
    required this.locale,
  });

  @override
  List<Object?> get props => [locale];
}

/// Event which load saved locale
class LoadSavedL10n extends L10nEvent {}
