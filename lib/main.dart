import 'package:flutter/material.dart';
import 'package:ibmc_blood_metabograms/constants.dart';
import 'package:ibmc_blood_metabograms/ibmc_blood_metabograms_app.dart';
import 'package:ibmc_blood_metabograms/service_locator.dart' as di;
import 'package:flutter/services.dart';
// import 'package:ibmc_blood_metabograms/utils/image_utils.dart';
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

  // Precache the images
  // ImageUtils.svgPrecacheImages();

  // Use the dependencies injection
  await di.registerServices();

  // Configure the application with Sentry for collect the feedback information
  await SentryFlutter.init(
    (options) {
      options.dsn = Constants.sentryDsn;
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
          child: IbmcBloodMetabogramsApplication(),
        ),
      ),
    ),
  ).then((value) {});
}

void main() {
  run();
}
