part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class UpdateUsername extends AuthEvent {
  final String username;
  const UpdateUsername(this.username);

  @override
  List<Object> get props => [username];
}

class UpdatePassword extends AuthEvent {
  final String password;
  const UpdatePassword(this.password);

  @override
  List<Object> get props => [password];
}

class TogglePasswordVisibility extends AuthEvent {}