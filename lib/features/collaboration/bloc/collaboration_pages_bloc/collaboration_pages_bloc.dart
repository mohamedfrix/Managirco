import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'collaboration_pages_event.dart';
part 'collaboration_pages_state.dart';

class CollaborationPagesBloc extends Bloc<CollaborationPagesEvent, CollaborationPagesState> {
  CollaborationPagesBloc() : super(CollaborationPagesInitial()) {
    on<CollaborationPagesEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
