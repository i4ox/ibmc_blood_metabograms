import 'app_localizations.g.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get firstOnboardingTitle => 'View analyzes';

  @override
  String get secondOnboardingTitle => 'Artificial Intelligence';

  @override
  String get thirdOnboardingTitle => 'Huge range of services';

  @override
  String get firstOnboardingDescription =>
      'The app allows you to view both a quick summary of the patient\'s condition, as well as extremely detailed and detailed statistics based on tables and graphs,';

  @override
  String get secondOnboardingDescription =>
      'The application supports functionality using artificial intelligence. This role is played by a specially trained BioChatGpt with an accuracy of about 87%.';

  @override
  String get thirdOnboardingDescription =>
      'The app has many different features, from viewing analyzes to generating scientific publications using artificial intelligence based on collected analyses';

  @override
  String get dashboard => 'Dashboard';

  @override
  String get analysis => 'Analysis';

  @override
  String get profiles => 'Profiles';

  @override
  String get settings => 'Settings';

  @override
  String get changeLanguage => 'Change the language';

  @override
  String get switchLightTheme => 'Switch theme to dark';

  @override
  String get switchDarkTheme => 'Switch theme to light';

  @override
  String get devMode => 'Developer mode';

  @override
  String get uikit => 'UiKit';

  @override
  String get inDevelopment => 'In development';
}
