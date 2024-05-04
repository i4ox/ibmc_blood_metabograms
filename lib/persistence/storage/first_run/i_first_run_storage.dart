/// Repository interface for working with first app status.
abstract class IFirstRunStorage {
  /// Return is a first run app
  bool getIsFirstRun();

  /// Save first run app
  Future<void> setIsFirstRun({required bool value});
}
