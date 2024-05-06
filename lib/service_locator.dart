import 'package:get_it/get_it.dart';
import 'package:ibmc_blood_metabograms/navigation/app_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Store the instance for DI
final getIt = GetIt.I;

/// Register the services
Future<void> registerServices() async {
  // Shared preferences
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerLazySingleton(() => sharedPreferences);

  // AutoRoute
  final appRouter = AppRouter();
  getIt.registerSingleton(appRouter);
}
