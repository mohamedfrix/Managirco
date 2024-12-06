import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'welcome_event.dart';
part 'welcome_state.dart';

class WelcomeBloc extends Bloc<WelcomeEvent, WelcomeState> {
  WelcomeBloc() : super(WelcomeScreenPage(pageNum: 0)) {

    on<WelcomeChangeScreenNumber> ((event, emit) {
      emit(WelcomeScreenPage(pageNum: event.pageNum));
    });
  }
}
