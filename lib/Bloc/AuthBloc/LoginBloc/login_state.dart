import 'package:blog_app/Data/Response/status.dart';
import 'package:equatable/equatable.dart';

class LoginState extends Equatable {
  final String email;
  final String password;
  final String message;
  final Status status;
  final String gender;

  const LoginState({
    this.email = '',
    this.password = '',
    this.message = '',
    this.status = Status.notStarted,
    this.gender = '',
  });

  // Copy with
  LoginState copyWith({
    String? email,
    String? password,
    String? message,
    Status? status,
    String? gender,
  }) {
    return LoginState(
      email: email ?? this.email,
      password: password ?? this.password,
      message: message ?? this.message,
      status: status ?? this.status,
      gender: gender ?? this.gender,
    );
  }

  @override
  List<Object?> get props => [email, password, message, status, gender];
}
