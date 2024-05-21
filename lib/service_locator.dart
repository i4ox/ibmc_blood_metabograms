import 'package:appwrite/appwrite.dart';
import 'package:get_it/get_it.dart';
import 'package:kmk_viewer/config/app_config.dart';
import 'package:kmk_viewer/config/app_logger_config.dart';
import 'package:kmk_viewer/features/auth/auth.dart';
import 'package:kmk_viewer/features/settings/bloc/l10n/l10n_bloc.dart';
import 'package:kmk_viewer/features/settings/bloc/theme/theme_bloc.dart';
import 'package:kmk_viewer/home/home.dart';
import 'package:kmk_viewer/navigation/navigation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'util/util.dart';

/// Store the instance for DI
final getIt = GetIt.I;

/// Register the services
Future<void> registerServices() async {
  // BLoC
  getIt.registerFactory(() => HomeBloc());
  getIt.registerFactory(() => L10nBloc());
  getIt.registerFactory(() => ThemeBloc());
  getIt.registerFactory(() => AuthBloc());

  // App configuration
  getIt.registerLazySingleton(() {
    return AppConfig(
      sentryDsn: "https://a9166578dccc224f1cf81a1f8eb12244@o4507192576311296.ingest.de.sentry.io/4507192577228880",
      environmentType: "debug", //"release",
    );
  });

  // Logger
  getIt.registerLazySingleton(() {
    return AppLogger.initLoggerWithConfig(AppLoggerConfig(
      colors: true,
      printTime: true,
      printEmojis: false,
      errorMethodCount: 8,
      methodCount: 2,
      lineLength: 120,
      logFilter: AppLogFilter(),
    ));
  });

  // AppWrite
  getIt.registerLazySingleton(() {
    return Client()
        .setEndpoint('https://cloud.appwrite.io/v1')
        .setProject('66490f4f002cdef9ab2e')
        .setSelfSigned(status: true);
  });

  // Shared preferences and NSUserDefaults wrapper
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerLazySingleton(() => sharedPreferences);

  // go_router
  getIt.registerLazySingleton(() => createRouter());
}
