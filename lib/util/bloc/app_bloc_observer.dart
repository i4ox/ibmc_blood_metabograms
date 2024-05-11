import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibmc_blood_metabograms/service_locator.dart';
import 'package:logger/logger.dart';

/// Extended [BlocObserver] for ibmc application
class AppBlocObserver extends BlocObserver {
  AppBlocObserver();

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    getIt<Logger>().i('onTransition ${bloc.runtimeType}: $transition');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    getIt<Logger>().e('onError ${bloc.runtimeType}', error: error, stackTrace: stackTrace);
  }
}
