import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibmc_blood_metabograms/app/app.dart';

part 'app_event.dart';
part 'app_state.dart';

/// Bloc class for [App]
class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(AppInitial()) {
    on<AppChangeLocale>(_changeLocale);
  }
}

void _changeLocale(AppChangeLocale event, Emitter<AppState> emit) {}
