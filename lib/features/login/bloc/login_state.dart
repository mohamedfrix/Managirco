part of 'login_bloc.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}

final class LoginScreenWrongCredentials extends LoginState {}

final class LoginScreenSuccess extends LoginState {}

final class LoginLoading extends LoginState {}