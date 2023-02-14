part of 'login_bloc.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}

class UnLoginState extends LoginState {}

class ErrorLoginState extends LoginState {
  final Object errorMessage;
  ErrorLoginState({
    required this.errorMessage,
  });
}

class InLoginState extends LoginState {
  final Object user;
  InLoginState(
    this.user,
  ) {
    // Storage.set(StorageKeys.id, this.user.id);
  }
}
