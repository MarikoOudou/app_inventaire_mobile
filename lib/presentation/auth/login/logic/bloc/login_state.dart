part of 'login_bloc.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}

class UnLoginState extends LoginState {}

class ErrorLoginState extends LoginState {}

class InLoginState extends LoginState {}
