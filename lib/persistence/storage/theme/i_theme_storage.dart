/// Repository interface for working with theme.
abstract class IThemeStorage {
  /// Return is a theme
  String getTheme();

  /// Save the theme
  Future<void> setTheme({required String value});
}
