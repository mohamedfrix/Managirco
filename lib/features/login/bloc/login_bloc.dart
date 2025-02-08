import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {

    on<LoginScreenRequestEvent> (_login_request);

    @override
    void onTransition(transition){
      super.onTransition(transition);
      print('Transition: $transition');
    }
  }





  FutureOr<void> _login_request(LoginScreenRequestEvent event, Emitter<LoginState> emit) async {
    final base_url = dotenv.get('API_URL');
    print(base_url);
    var users = [
      {'username' : 'moh', 'password' : '123'},
    ];
    bool found = false;
    for (int i = 0; i < users.length; i++){
      if (event.username.trim() == users[i]['username'] && event.password.trim() == users[i]['password']){
        emit(LoginLoading());
        await Future.delayed(const Duration(seconds: 2));
        emit(LoginScreenSuccess());
        found = true;
      }
    }
    if (!found){
      emit(LoginLoading());
      await Future.delayed(const Duration(seconds: 2));
      emit(LoginScreenWrongCredentials());
    }
  }
}
