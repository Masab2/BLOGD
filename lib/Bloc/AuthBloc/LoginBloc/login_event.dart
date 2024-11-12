import 'package:equatable/equatable.dart';

abstract class LoginEvents extends Equatable {
  const LoginEvents();
  @override
  List<Object?> get props => [];
}

class LoginEmailChanged extends LoginEvents {
  final String email;

  const LoginEmailChanged({required this.email});
  @override
  List<Object?> get props => [email];
}

class LoginPasswordChanged extends LoginEvents {
  final String password;

  const LoginPasswordChanged({required this.password});
  @override
  List<Object?> get props => [password];
}

// Login Button Clicked Event
class LoginButtonClicked extends LoginEvents {}