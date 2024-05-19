import 'package:kmk_viewer/config/app_config.dart';
import 'package:kmk_viewer/service_locator.dart';
import 'package:logger/logger.dart';

/// Custom [LogFilter] for app
class AppLogFilter extends LogFilter {
  @override
  bool shouldLog(LogEvent event) {
    if (getIt<AppConfig>().environmentType == "debug") {
      return true;
    }
    return false;
  }
}
