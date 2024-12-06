part of 'welcome_bloc.dart';

@immutable
sealed class WelcomeEvent {}

class WelcomeChangeScreenNumber extends WelcomeEvent {
  final int pageNum;

  WelcomeChangeScreenNumber({required this.pageNum});
}