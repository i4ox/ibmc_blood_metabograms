import 'package:logger/logger.dart';

/// Logger configuration
class AppLoggerConfig {
  final bool colors;

  final bool printEmojis;

  final bool printTime;

  final int errorMethodCount;

  final int methodCount;

  final int lineLength;

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
