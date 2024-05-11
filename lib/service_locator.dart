import 'package:get_it/get_it.dart';
import 'package:ibmc_blood_metabograms/application/cubit/application_cubit.dart';
import 'package:ibmc_blood_metabograms/navigation/app_router.dart';
import 'package:ibmc_blood_metabograms/utils/ibmc_log_filter.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Store the instance for DI
final getIt = GetIt.I;

/// Register the services
Future<void> registerServices() async {
  
  // Logger
  final logger = Logger(
    filter: IbmcLogFilter(),
    printer: PrettyPrinter(
      colors: true,
      printEmojis: true,
      printTime: true,
      errorMethodCount: 8,
      methodCount: 2,
      lineLength: 120,
    ),
  );
  getIt.registerSingleton(logger);

  // Shared preferences and NSUserDefaults wrapper
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerLazySingleton(() => sharedPreferences);

  // AutoRoute
  final appRouter = AppRouter();
  getIt.registerSingleton(appRouter);

  // BLoC
  final applicationCubit = ApplicationCubit();
  getIt.registerLazySingleton(() => applicationCubit);

}
