import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibmc_blood_metabograms/config/app_config.dart';
import 'package:ibmc_blood_metabograms/config/app_logger_config.dart';
import 'package:ibmc_blood_metabograms/ibmc_blood_metabograms_app.dart';
import 'package:ibmc_blood_metabograms/service_locator.dart' as di;
import 'package:flutter/services.dart';
import 'package:ibmc_blood_metabograms/service_locator.dart';
import 'package:ibmc_blood_metabograms/util/bloc/app_bloc_observer.dart';
import 'package:ibmc_blood_metabograms/util/logger/app_log_filter.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

/// Launch the application
Future<void> run() async {
  // initialize the bindings before run the application
  WidgetsFlutterBinding.ensureInitialized();

  // Setup the preferred orientations, disabled other
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  // Create logger config
  final loggerConfig = AppLoggerConfig(
    colors: true,
    printTime: true,
    printEmojis: false,
    errorMethodCount: 8,
    methodCount: 2,
    lineLength: 120,
    logFilter: AppLogFilter(),
  );

  // Create app config
  final appConfig = AppConfig(
    sentryDsn: "https://a9166578dccc224f1cf81a1f8eb12244@o4507192576311296.ingest.de.sentry.io/4507192577228880",
    environmentType: "debug", //"release",
  );

  // Use the dependencies injection
  await di.registerServices(appConfig, loggerConfig);

  await _runApp();
}

/// Initial services needed for correct work of application
Future<void> _runApp() async {
  // Setup the observer for bloc
  Bloc.observer = AppBlocObserver();

  // Configure the application with Sentry for collect the feedback information
  await SentryFlutter.init(
    (options) {
      options.dsn = getIt<AppConfig>().sentryDsn;
      options.enableAutoPerformanceTracing = true;
      options.tracesSampleRate = 0.2;
      options.attachScreenshot = true;
    },
    appRunner: () => runApp(
      // When UX an error, exeption or crash
      // Sentry provides the ability to take a screenshot and
      // include it as an attachment to feedback report
      SentryScreenshotWidget(
        // The [DefaultAssetBundle] provides insight into how long
        // app takes to load its assets, such as files
        child: DefaultAssetBundle(
          bundle: SentryAssetBundle(),
          child: const IbmcBloodMetabogramsApplication(),
        ),
      ),
    ),
  ).then((value) {});
}
