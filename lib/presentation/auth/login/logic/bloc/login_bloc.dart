import 'package:api_inventaire/api.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:inventaire_immobilier/presentation/auth/login/data/repository/usersRepository.dart';
import 'package:inventaire_immobilier/shared/constants/storage_keys.dart';
import 'package:inventaire_immobilier/shared/storage.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  UsersRepository? usersRepository = new UsersRepository();

  LoginBloc({this.usersRepository}) : super(LoginInitial()) {
    on<LoginEvent>((event, emit) {
      // TODO: implement event handler
      if (event is SendDataLoginEvent) {
        print('Hello data event emit : ' + event.email.toString());
        login(event.email);
      }
    });
  }

  login(String email) async {
    emit(LoginLoading());
    usersRepository?.authenticate(email: email).then((value) {
      ResponseData response = value;
      print("Result Serveur : " + response.toString());

      if (response.status ?? true) {
        emit(InLoginState(Users.fromJson(response.data) ?? new Users()));
      } else {
        emit(ErrorLoginState(
          errorMessage: response.message ?? {},
        ));
      }
    });
  }
}