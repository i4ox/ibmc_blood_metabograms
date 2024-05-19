import 'package:kmk_viewer/config/app_logger_config.dart';
import 'package:logger/logger.dart';

/// Logger for application
class AppLogger {
  /// Initialize logger without specified settings
  static Logger initDefaultLogger() {
    return Logger();
  }

  /// Initialize logger with config
  static Logger initLoggerWithConfig(AppLoggerConfig config) {
    return Logger(
      printer: PrettyPrinter(
        colors: config.colors,
        printEmojis: config.printEmojis,
        printTime: config.printTime,
        errorMethodCount: config.errorMethodCount,
        methodCount: config.methodCount,
        lineLength: config.lineLength,
      ),
      filter: config.logFilter,
    );
  }
}
