part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {}

class AuthLogout extends AuthState {}

class AuthRunning extends AuthState {
  // AuthRunning({
  //   this.token,

  // })
}
