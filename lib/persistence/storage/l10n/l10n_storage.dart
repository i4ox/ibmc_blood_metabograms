import 'package:kmk_viewer/persistence/storage/l10n/i_l10n_storage.dart';
import 'package:kmk_viewer/service_locator.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Repository for working with saved locales
class L10nStorage implements IL10nStorage {
  static const String _savedLocaleKey = "saved_locale";

  @override
  String getSavedLocale() {
    return getIt<SharedPreferences>().getString(_savedLocaleKey) ?? "en";
  }

  @override
  Future<void> setSavedLocale({required String value}) async {
    await getIt<SharedPreferences>().setString(_savedLocaleKey, value);
  }
}
