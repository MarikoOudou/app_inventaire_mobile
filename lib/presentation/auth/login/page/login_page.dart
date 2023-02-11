import 'package:flutter/material.dart';
import 'package:inventaire_immobilier/presentation/auth/login/screen/login_screen.dart';
import 'package:inventaire_immobilier/shared/widgets/AppBarTheme.dart';

import '../logic/bloc/login_bloc.dart';
// import 'package:inventaire_immobilier/presentation/auth/login/index.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = '/';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _loginBloc = LoginBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarThemeCustom.appBar("Login", context, backPage: false),
      body: LoginScreen(loginBloc: _loginBloc),
    );
  }
}
