import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:blog_app/Bloc/AuthBloc/LoginBloc/login_event.dart';
import 'package:blog_app/Bloc/AuthBloc/LoginBloc/login_state.dart';
import 'package:blog_app/Data/Response/status.dart';
import 'package:blog_app/Repository/AuthRepo/LoginRepo/login_repo.dart';
import 'package:blog_app/Service/SessionManager/session_manager.dart';

class LoginBloc extends Bloc<LoginEvents, LoginState> {
  final LoginRepo loginRepo;
  LoginBloc({required this.loginRepo}) : super(const LoginState()) {
    on<LoginEmailChanged>(_onEmailChangedEvent);
    on<LoginPasswordChanged>(_onPassswordChangedEvent);
    on<LoginButtonClicked>(_onLoginButtonClickedEvent);
  }

  void _onEmailChangedEvent(LoginEmailChanged event, Emitter<LoginState> emit) {
    emit(state.copyWith(email: event.email));
  }

  void _onPassswordChangedEvent(
      LoginPasswordChanged event, Emitter<LoginState> emit) {
    emit(state.copyWith(password: event.password));
  }

  void _onLoginButtonClickedEvent(
      LoginButtonClicked event, Emitter<LoginState> emit) async {
    log('Email: ${state.email}');
    log('Password: ${state.password}');
    Map<String, dynamic> data = {
      'email': state.email,
      'password': state.password,
    };
    try {
      final value = await loginRepo.loginApi(data);
      if (value.status == true) {
        log('Login successful');
        await SessionController()
            .saveUserInPrefrences(value, value.data?.id ?? "");
        await SessionController().getUserFromPrefrences();

        emit(state.copyWith(
          status: Status.completed,
          message: value.message,
          email: state.email,
          gender: state.gender,
        ));
      } else {
        log('Login failed: ${value.message}');
        emit(state.copyWith(
          message: value.message.toString(),
          status: Status.error,
        ));
      }
    } catch (error) {
      log('Error: $error');
      emit(state.copyWith(message: error.toString(), status: Status.error));
    }
  }
}
