import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kmk_viewer/app/app.dart';

part 'app_event.dart';
part 'app_state.dart';

/// Bloc class for [App]
class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(AppInitial());
}
