part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object?> get props => [];
}

class InitAuthSystem extends AuthEvent {}

class Login extends AuthEvent {
  const Login({
    required this.email,
    required this.password,
  });

  final String email;

  final String password;

  @override
  List<Object?> get props => [email, password];
}

class Register extends AuthEvent {
  const Register({
    required this.email,
    required this.password,
  });

  final String email;

  final String password;

  @override
  List<Object?> get props => [email, password];
}

class SignFailure extends AuthEvent {
  const SignFailure({
    required this.failure,
  });

  final String failure;

  @override
  List<Object?> get props => [failure];
}

class CheckAuthSession extends AuthEvent {}

class DeleteSession extends AuthEvent {}
