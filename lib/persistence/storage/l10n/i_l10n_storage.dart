/// Repository interface for working with saved locales.
abstract class IL10nStorage {
  /// Return saved locale
  String getSavedLocale();

  /// Save the locale
  Future<void> setSavedLocale({required String value});
}
