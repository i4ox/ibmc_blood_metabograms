/// App configuration
class AppConfig {

  final String sentryDsn;

  final String environmentType;

  const AppConfig({
    required this.sentryDsn,
    required this.environmentType,
  });

}
