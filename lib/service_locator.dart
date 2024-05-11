import 'package:get_it/get_it.dart';
import 'package:ibmc_blood_metabograms/config/app_config.dart';
import 'package:ibmc_blood_metabograms/config/app_logger_config.dart';
import 'package:ibmc_blood_metabograms/home/home.dart';
import 'package:ibmc_blood_metabograms/navigation/routes/routes.dart';
import 'package:ibmc_blood_metabograms/util/logger/app_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Store the instance for DI
final getIt = GetIt.I;

/// Register the services
Future<void> registerServices(AppConfig appConfig, AppLoggerConfig loggerConfig) async {

  // BLoC
  getIt.registerFactory(() => HomeBloc());

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
