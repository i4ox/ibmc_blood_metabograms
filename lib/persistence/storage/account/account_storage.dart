import 'package:kmk_viewer/persistence/storage/account/i_account_storage.dart';
import 'package:kmk_viewer/service_locator.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Repository for working with account
class AccountStorage implements IAccountStorage {
  static const String _savedEmailKey = "account_email";
  static const String _savedPasswordKey = "account_password";
  static const String _savedSessionKey = "account_session";

  @override
  String getAccountEmail() {
    return getIt<SharedPreferences>().getString(_savedEmailKey) ?? "";
  }

  @override
  String getAccountPassword() {
    return getIt<SharedPreferences>().getString(_savedPasswordKey) ?? "";
  }

  @override
  bool getIsSessionActive() {
    return getIt<SharedPreferences>().getBool(_savedSessionKey) ?? false;
  }

  @override
  Future<void> setAccountEmail({required String value}) async {
    await getIt<SharedPreferences>().setString(_savedEmailKey, value);
  }

  @override
  Future<void> setAccountPassword({required String value}) async {
    await getIt<SharedPreferences>().setString(_savedPasswordKey, value);
  }

  @override
  Future<void> setIsSessionActive({required bool value}) async {
    await getIt<SharedPreferences>().setBool(_savedSessionKey, value);
  }
}
