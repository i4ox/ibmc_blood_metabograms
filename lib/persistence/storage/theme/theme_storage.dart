import 'package:ibmc_blood_metabograms/persistence/storage/theme/i_theme_storage.dart';
import 'package:ibmc_blood_metabograms/service_locator.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Repository for working with theme
class ThemeStorage implements IThemeStorage {
  static const String _themeKey = "theme_mode";

  @override
  String getTheme() {
    return getIt<SharedPreferences>().getString(_themeKey) ?? "system";
  }

  @override
  Future<void> setTheme({required String value}) async {
    await getIt<SharedPreferences>().setString(_themeKey, value);
  }
}
