part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object?> get props => [];
}

class AuthInitial extends AuthState {}

class AuthSignIn extends AuthState {}

class AuthSignUp extends AuthState {}

class AuthShowFailure extends AuthState {
  const AuthShowFailure({
    required this.failure,
  });

  final String failure;

  @override
  List<Object?> get props => [failure];
}

class AuthSuccessLogin extends AuthState {}

class AuthShowPage extends AuthState {}
