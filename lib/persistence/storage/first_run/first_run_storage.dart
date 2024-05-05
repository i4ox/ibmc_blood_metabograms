import 'package:ibmc_blood_metabograms/persistence/storage/first_run/i_first_run_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Repository for working with first app status
class FirstRunStorage implements IFirstRunStorage {
  static const String _firstRunKey = "first_run";
  final SharedPreferences _prefs;

  /// Create the instance of [IFirstRunStorage]
  const FirstRunStorage(this._prefs);

  @override
  bool getIsFirstRun() {
    return _prefs.getBool(_firstRunKey) ?? true;
  }

  @override
  Future<void> setIsFirstRun({required bool value}) async {
    await _prefs.setBool(_firstRunKey, value);
  }
  
}
