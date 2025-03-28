part of 'auth_bloc.dart';

class AuthState extends Equatable {
  final String username;
  final String password;
  final bool showPassword;

  const AuthState({
    this.username = '',
    this.password = '',
    this.showPassword = false,
  });

  AuthState copyWith({
    String? username,
    String? password,
    bool? showPassword,
  }) {
    return AuthState(
      username: username ?? this.username,
      password: password ?? this.password,
      showPassword: showPassword ?? this.showPassword,
    );
  }

  @override
  List<Object> get props => [username, password, showPassword];
}