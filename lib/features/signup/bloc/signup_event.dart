part of 'signup_bloc.dart';

@immutable
sealed class SignupEvent {}


class SignupScreenRequestEvent extends SignupEvent{
  final String email;
  final String name;
  final String password;

  SignupScreenRequestEvent({required this.email, required this.name, required this.password});


}
