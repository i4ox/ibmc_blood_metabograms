/// Repository interface for working with onboarding status.
abstract class IOnboardingShownStorage {
  /// Return is a onboarding shown
  bool getIsOnboardingShown();

  /// Save onboarding shown option
  Future<void> setIsOnboardingShown({required bool value});
}
