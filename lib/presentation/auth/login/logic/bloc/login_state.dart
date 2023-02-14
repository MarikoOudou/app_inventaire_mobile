part of 'login_bloc.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class UnLoginState extends LoginState {}

class ErrorLoginState extends LoginState {
  final Object errorMessage;
  ErrorLoginState({
    required this.errorMessage,
  });
}

class InLoginState extends LoginState {
  final Users user;
  InLoginState(
    this.user,
  ) {
    Storage.set(StorageKeys.id, this.user.userId.toString());
    Storage.set(StorageKeys.fullname, this.user.fullname?.toUpperCase());
  }
}
