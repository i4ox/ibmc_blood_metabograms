import 'package:ibmc_blood_metabograms/constants.dart';
import 'package:logger/logger.dart';

/// Filter for logger
class IbmcLogFilter extends LogFilter {
  @override
  bool shouldLog(LogEvent event) {
    if (Constants.environmentType == "debug") {
      return true;
    }
    return false;
  }
}
