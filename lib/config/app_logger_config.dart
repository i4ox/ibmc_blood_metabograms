import 'package:logger/logger.dart';

/// Logger configuration
class AppLoggerConfig {
  /// Store logical value which say should or not use colors within [Logger]
  final bool colors;

  /// Store logical value which say should or not use emojis within [Logger]
  final bool printEmojis;

  /// Store logical value which say should or not save the time when log was created
  final bool printTime;

  /// Count of error methods in stacktrace
  final int errorMethodCount;

  /// Count of success methods in stacktrace
  final int methodCount;

  /// Length of line for log messages
  final int lineLength;

  /// Custom [LogFilter] for [Logger]
  final LogFilter logFilter;

  const AppLoggerConfig({
    required this.colors,
    required this.printEmojis,
    required this.printTime,
    required this.errorMethodCount,
    required this.methodCount,
    required this.lineLength,
    required this.logFilter,
  });
}
