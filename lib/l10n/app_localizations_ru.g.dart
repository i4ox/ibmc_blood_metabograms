import 'app_localizations.g.dart';

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get firstOnboardingTitle => 'Просматривай анализы';

  @override
  String get secondOnboardingTitle => 'Искусственный интеллект';

  @override
  String get thirdOnboardingTitle => 'Огромный спектр услуг';

  @override
  String get firstOnboardingDescription => 'Приложение позволяет просматривать как краткую сводку о состоянии пациента, так и крайне развернутую и детальную статистику на основе таблиц и графов';

  @override
  String get secondOnboardingDescription => 'В приложении поддерживается функционал с использованием искусственного интеллекта. В роли которого выступает специально обученный BioChatGpt с точностью около 87%';

  @override
  String get thirdOnboardingDescription => 'В приложении имеется множество различных функций, от просмотра анализов до генерации научных публикаций при помощи искусственного интелекта на основе собранных анализов';

  @override
  String get dashboard => 'Дешбоард';

  @override
  String get analysis => 'Анализы';

  @override
  String get profiles => 'Профили';

  @override
  String get settings => 'Настройки';
}
