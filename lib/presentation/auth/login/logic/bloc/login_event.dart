part of 'login_bloc.dart';

abstract class LoginEvent {}

class LoadLoginEvent extends LoginEvent {}

class SendDataLoginEvent extends LoginEvent {
  String email;

  SendDataLoginEvent({required this.email});
}
