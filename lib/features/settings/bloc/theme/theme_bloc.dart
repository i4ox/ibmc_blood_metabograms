import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibmc_blood_metabograms/persistence/storage/theme/theme_storage.dart';

part 'theme_event.dart';
part 'theme_state.dart';

/// Bloc for [L10nScreen]
class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState.initial()) {
    on<LoadSavedTheme>(_getTheme);
    on<LoadTheme>(_changeTheme);
  }

  /// Helper method which save the new locale and change to it
  Future<void> _changeTheme(LoadTheme event, Emitter<ThemeState> emit) async {
    if (event.themeMode == state.themeMode) return;
    final themeStorage = ThemeStorage();
    await themeStorage.setTheme(
      value: event.themeMode.name,
    );
    emit(ThemeState(themeMode: event.themeMode));
  }

  /// Helper method which get the saved locale and re-enable this locale for app
  Future<void> _getTheme(LoadSavedTheme event, Emitter<ThemeState> emit) async {
    final themeStorage = ThemeStorage();
    String themeMode = await themeStorage.getTheme();
    emit(ThemeState(themeMode: ThemeMode.values.byName(themeMode)));
  }
}
