import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState()) {  
    on<UpdateUsername>(_onUpdateUsername);
    on<UpdatePassword>(_onUpdatePassword);
    on<TogglePasswordVisibility>(_onTogglePasswordVisibility);
  }

  void _onUpdateUsername(UpdateUsername event, Emitter<AuthState> emit) {
    emit(state.copyWith(username: event.username));
  }

  void _onUpdatePassword(UpdatePassword event, Emitter<AuthState> emit) {
    emit(state.copyWith(password: event.password));
  }

  void _onTogglePasswordVisibility(
      TogglePasswordVisibility event, Emitter<AuthState> emit) {
    emit(state.copyWith(showPassword: !state.showPassword));
  }
}