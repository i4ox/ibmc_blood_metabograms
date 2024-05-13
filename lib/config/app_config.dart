/// App configuration
class AppConfig {
  /// Store the dsn for sentry
  final String sentryDsn;

  /// Store the build type
  final String environmentType;

  const AppConfig({
    required this.sentryDsn,
    required this.environmentType,
  });
}
