import 'package:ibmc_blood_metabograms/persistence/storage/first_run/i_first_run_storage.dart';
import 'package:ibmc_blood_metabograms/service_locator.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Repository for working with first app status
class FirstRunStorage implements IFirstRunStorage {
  static const String _firstRunKey = "first_run";

  @override
  bool getIsFirstRun() {
    return getIt<SharedPreferences>().getBool(_firstRunKey) ?? true;
  }

  @override
  Future<void> setIsFirstRun({required bool value}) async {
    await getIt<SharedPreferences>().setBool(_firstRunKey, value);
  }
}
