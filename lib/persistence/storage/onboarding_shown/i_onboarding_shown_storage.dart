/// Repository interface for working with onboarding status.
abstract class IOnboardingShownStorage {
  /// Return is a first run app
  bool getIsOnboardingShown();

  /// Save first run app
  Future<void> setIsOnboardingShown({required bool value});
}
