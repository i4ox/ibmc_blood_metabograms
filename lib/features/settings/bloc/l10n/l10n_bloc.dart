import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibmc_blood_metabograms/config/s.dart';
import 'package:ibmc_blood_metabograms/persistence/storage/l10n/l10n_storage.dart';

part 'l10n_event.dart';
part 'l10n_state.dart';

class L10nBloc extends Bloc<L10nEvent, L10nState> {
  L10nBloc() : super(L10nState.initial()) {
    on<LoadSavedL10n>(_getLanguage);
    on<LoadL10n>(_changeLanguage);
  }

  Future<void> _changeLanguage(LoadL10n event, Emitter<L10nState> emit) async {
    if (event.locale == state.locale) return;
    final l10nStorage = L10nStorage();
    await l10nStorage.setSavedLocale(
      value: event.locale.languageCode,
    );
    emit(L10nState(locale: event.locale));
  }

  Future<void> _getLanguage(LoadSavedL10n event, Emitter<L10nState> emit) async {
    final l10nStorage = L10nStorage();
    String languageCode = await l10nStorage.getSavedLocale();
    emit(L10nState(locale: Locale(languageCode)));
  }
}
