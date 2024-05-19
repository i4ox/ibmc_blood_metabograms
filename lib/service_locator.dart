import 'package:get_it/get_it.dart';
import 'package:kmk_viewer/config/app_config.dart';
import 'package:kmk_viewer/config/app_logger_config.dart';
import 'package:kmk_viewer/features/settings/bloc/l10n/l10n_bloc.dart';
import 'package:kmk_viewer/features/settings/bloc/theme/theme_bloc.dart';
import 'package:kmk_viewer/home/home.dart';
import 'package:kmk_viewer/navigation/navigation.dart';
import 'package:kmk_viewer/util/logger/app_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Store the instance for DI
final getIt = GetIt.I;

/// Register the services
Future<void> registerServices(AppConfig appConfig, AppLoggerConfig loggerConfig) async {
  // BLoC
  getIt.registerFactory(() => HomeBloc());
  getIt.registerFactory(() => L10nBloc());
  getIt.registerFactory(() => ThemeBloc());

  // App configuration
  getIt.registerLazySingleton(() => appConfig);

  // Logger
  getIt.registerLazySingleton(() => AppLogger.initLoggerWithConfig(loggerConfig));

  // Shared preferences and NSUserDefaults wrapper
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerLazySingleton(() => sharedPreferences);

  // go_router
  getIt.registerLazySingleton(() => createRouter());
}
