part of 'login_bloc.dart';

@immutable
sealed class LoginEvent {}

class LoginScreenRequestEvent extends LoginEvent{
  final String username;
  final String password;
  final bool rememberMe;

  LoginScreenRequestEvent({required this.username, required this.password, required this.rememberMe});
}
