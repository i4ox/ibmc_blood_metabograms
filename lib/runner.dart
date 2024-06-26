import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kmk_viewer/config/app_config.dart';
import 'package:kmk_viewer/kmk_viewer_app.dart';
import 'package:kmk_viewer/service_locator.dart' as di;
import 'package:flutter/services.dart';
import 'package:kmk_viewer/service_locator.dart';
import 'package:kmk_viewer/util/bloc/app_bloc_observer.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

/// Launch the application
Future<void> run() async {
  // initialize the bindings before run the application
  WidgetsFlutterBinding.ensureInitialized();

  // Setup the preferred orientations, disabled other
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  // Use the dependencies injection
  await di.registerServices();

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
          child: const KmkViewerApplication(),
        ),
      ),
    ),
  ).then((value) {});
}
