part of 'welcome_bloc.dart';

@immutable
sealed class WelcomeState {}

final class WelcomeScreenPage extends WelcomeState {
  final int pageNum;

  WelcomeScreenPage({required this.pageNum});
}