import 'package:appwrite/appwrite.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kmk_viewer/persistence/storage/account/account_storage.dart';
import 'package:kmk_viewer/service_locator.dart';
import 'package:logger/logger.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<Login>(_login);
    on<Register>(_signup);
    on<SignFailure>(_failure);
    on<CheckAuthSession>(_checkAuthSession);
    on<DeleteSession>(_deleteSession);
  }

  Future<void> _deleteSession(DeleteSession event, Emitter<AuthState> emit) async {
    await Account(getIt<Client>()).deleteSessions();
    await AccountStorage().setIsSessionActive(value: false);
    emit(AuthInitial());
  }

  Future<void> _login(Login event, Emitter<AuthState> emit) async {
    getIt<Logger>().i("Login with AppWrite");
    emit(AuthSignIn());
    final account = Account(getIt<Client>());
    try {
      await account.createEmailPasswordSession(
        email: event.email,
        password: event.password,
      );
    } on AppwriteException catch (e) {
      getIt<Logger>().e(e);
      add(SignFailure(failure: "Ошибка! Что-то пошло не так"));
      return;
    }

    final accountStorage = AccountStorage();
    accountStorage.setAccountPassword(value: event.password);
    accountStorage.setAccountEmail(value: event.email);
    accountStorage.setIsSessionActive(value: true);
    emit(AuthSuccessLogin());
  }

  Future<void> _signup(Register event, Emitter<AuthState> emit) async {
    getIt<Logger>().i("Sign up with AppWrite");
    emit(AuthSignUp());
    final account = Account(getIt<Client>());
    try {
      await account.create(
        userId: ID.unique(),
        email: event.email,
        password: event.password,
      );
    } on AppwriteException catch (e) {
      getIt<Logger>().e(e);
      add(SignFailure(failure: "Ошибка! Что-то пошло не так"));
      return;
    }
    add(Login(email: event.email, password: event.password));
  }

  Future<void> _failure(SignFailure event, Emitter<AuthState> emit) async {
    emit(AuthShowFailure(failure: event.failure));
    emit(AuthInitial());
  }

  Future<void> _checkAuthSession(CheckAuthSession event, Emitter<AuthState> emit) async {
    bool isSessionExist = false;
    if (AccountStorage().getIsSessionActive()) isSessionExist = true;
    if (isSessionExist) {
      _registerAccount();
      emit(AuthSuccessLogin());
    } else {
      emit(AuthShowPage());
    }
  }

  Future<void> _registerAccount() async {
    final account = Account(getIt<Client>());
    getIt.registerLazySingleton(() => account);
  }
}
