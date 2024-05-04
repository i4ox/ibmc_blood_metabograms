import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ibmc_blood_metobograms/app/app.dart';
import 'package:ibmc_blood_metobograms/service_locator.dart' as di;
import 'package:sentry_flutter/sentry_flutter.dart';

/// Launch the application
Future<void> run() async {
  // initialize the bindings before run the application
  WidgetsFlutterBinding.ensureInitialized();

  // Setup the preferred orientations, disabled other
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  await _runApp();
}

/// Initial services needed for correct work of application
Future<void> _runApp() async {
  // Use the dependencies injection
  await di.registerServices();

  // Configure the application with Sentry for collect the feedback information
  await SentryFlutter.init(
    (options) {
      // TODO: Remove this and move to the environment
      options.dsn = 'https://a9166578dccc224f1cf81a1f8eb12244@o4507192576311296.ingest.de.sentry.io/4507192577228880';
      options.enableAutoPerformanceTracing = true;
      options.tracesSampleRate = 0.2;
      options.attachScreenshot = true;
    },
    appRunner: () => runApp(
      // When UX an error, exeption or crash
      // Sentry provides the ability to take a screenshot and
      // include it as an attachment to feedback report
      SentryScreenshotWidget(
        // TODO: Remove MaterialApp and start the Application class
        child: MaterialApp(
          // The [DefaultAssetBundle] provides insight into how long
          // app takes to load its assets, such as files
          home: DefaultAssetBundle(
            bundle: SentryAssetBundle(),
            child: Application(),
          ),
        ),
      ),
    ),
  ).then((value) {});
}
