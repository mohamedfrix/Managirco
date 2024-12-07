part of 'collaboration_pages_bloc.dart';

@immutable
sealed class CollaborationPagesState {}

final class CollaborationPagesInitial extends CollaborationPagesState {
  final int currentPageIndex;

  CollaborationPagesInitial({required this.currentPageIndex});
}

final class CollaborationPagesLoading extends CollaborationPagesState{}
