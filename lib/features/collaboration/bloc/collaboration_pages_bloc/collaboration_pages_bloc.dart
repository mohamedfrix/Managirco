import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'collaboration_pages_event.dart';
part 'collaboration_pages_state.dart';

class CollaborationPagesBloc extends Bloc<CollaborationPagesEvent, CollaborationPagesState> {
  CollaborationPagesBloc() : super(CollaborationPagesInitial(currentPageIndex: 0)) {

    on<CollaborationPagesSwitchPage>(_handle_switch_pages);
  }

  FutureOr<void> _handle_switch_pages(CollaborationPagesSwitchPage event, Emitter<CollaborationPagesState> emit) {
    emit(CollaborationPagesLoading());
    Future.delayed(Duration(seconds: 1));
    emit(CollaborationPagesInitial(currentPageIndex: event.currentPageIndex));
  }
}
