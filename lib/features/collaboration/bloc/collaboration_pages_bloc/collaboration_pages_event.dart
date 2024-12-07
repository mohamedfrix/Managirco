part of 'collaboration_pages_bloc.dart';

@immutable
sealed class CollaborationPagesEvent {}

class CollaborationPagesSwitchPage extends CollaborationPagesEvent{
  final int currentPageIndex;

  CollaborationPagesSwitchPage({required this.currentPageIndex});

}
