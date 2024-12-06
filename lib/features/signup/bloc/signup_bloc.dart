import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc() : super(SignupInitial()) {

    on<SignupScreenRequestEvent>(_handle_signup);
  }


  FutureOr<void> _handle_signup(SignupScreenRequestEvent event, Emitter<SignupState> emit) async {
    emit(SignupLoading());
    await Future.delayed(Duration(seconds: 3));
    emit(SignupScreenSuccess());
  }
}
