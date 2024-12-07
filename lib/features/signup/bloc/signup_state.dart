part of 'signup_bloc.dart';

@immutable
sealed class SignupState {}

final class SignupInitial extends SignupState {}

final class SignupScreenWrongCredentials extends SignupState {}

final class SignupScreenSuccess extends SignupState {}

final class SignupLoading extends SignupState {}