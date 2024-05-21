/// Repository interface for working with account.
abstract class IAccountStorage {
  /// Return session is saved or not
  bool getIsSessionActive();

  /// Save the state of account session
  Future<void> setIsSessionActive({required bool value});

  /// Return the account email
  String getAccountEmail();

  /// Save the account email
  Future<void> setAccountEmail({required String value});

  /// Return the account password
  String getAccountPassword();

  /// Save the account password
  Future<void> setAccountPassword({required String value});
}
