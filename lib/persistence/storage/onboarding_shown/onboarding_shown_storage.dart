import 'package:ibmc_blood_metabograms/persistence/storage/onboarding_shown/i_onboarding_shown_storage.dart';
import 'package:ibmc_blood_metabograms/service_locator.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Repository for working with onboarding shown status
class OnboardingShownStorage implements IOnboardingShownStorage {
  static const String _onboardingShownKey = "first_run";

  @override
  bool getIsOnboardingShown() {
    return getIt<SharedPreferences>().getBool(_onboardingShownKey) ?? false;
  }

  @override
  Future<void> setIsOnboardingShown({required bool value}) async {
    await getIt<SharedPreferences>().setBool(_onboardingShownKey, value);
  }
}
