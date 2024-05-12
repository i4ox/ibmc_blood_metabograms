part of 'l10n_bloc.dart';

abstract class L10nEvent extends Equatable {
  const L10nEvent();

  @override
  List<Object?> get props => [];
}

class LoadL10n extends L10nEvent {
  final Locale locale;
  const LoadL10n({
    required this.locale,
  });

  @override
  List<Object?> get props => [locale];
}

class LoadSavedL10n extends L10nEvent {}
