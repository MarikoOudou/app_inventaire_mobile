import 'package:api_inventaire/api.dart';
import 'package:art_sweetalert/art_sweetalert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventaire_immobilier/presentation/auth/login/data/services/usersService.dart';
import 'package:inventaire_immobilier/shared/themes/ColorsTheme.dart';

import '../../../../shared/widgets/input_widget.dart';
import '../logic/bloc/login_bloc.dart';
// import 'package:inventaire_immobilier/presentation/auth/login/screen/index.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    required LoginBloc loginBloc,
    Key? key,
  })  : _loginBloc = loginBloc,
        super(key: key);

  final LoginBloc _loginBloc;

  @override
  LoginScreenState createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  TextEditingController _email_controller = TextEditingController();
  // UsersApi _usersApi;
  // final UserService _userService = new UserService();
  // UsersApi _user = new UsersApi();

  // getAllUsers() async {
  //   // print('users');

  //   List<Users>? users = await _userService.usersApi.getAll();
  //   print(users?.length);
  // }

  LoginScreenState();

  @override
  void initState() {
    super.initState();
    _load();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return BlocBuilder<LoginBloc, LoginState>(
        bloc: widget._loginBloc,
        builder: (
          BuildContext context,
          LoginState currentState,
        ) {
          if (currentState is LoginLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (currentState is ErrorLoginState) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              ArtSweetAlert.show(
                  context: context,
                  artDialogArgs: ArtDialogArgs(
                      type: ArtSweetAlertType.danger,
                      // onConfirm: () {
                      //   print('object');
                      // },
                      confirmButtonText: 'Retour',
                      title: "Erreur d'authentification",
                      text: ""));
            });
          }
          if (currentState is InLoginState) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              Navigator.pushNamedAndRemoveUntil(
                  context, "/home", (route) => false);
            });

            // return Center(
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: <Widget>[
            //       Text('Hello'),
            //     ],
            //   ),
            // );
          }
          return body(size);
        });
  }

  void _load() {
    // widget._loginBloc.add(LoadLoginEvent());
  }

  Widget body(Size size) {
    return Container(
        // child: CircularProgressIndicator(),
        color: ColorTheme.grey,
        width: double.infinity,
        height: size.height - 25,
        padding: EdgeInsets.all(20),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              widgetLogo(),
              const SizedBox(
                height: 10,
              ),
              Text(
                'CONNEXION',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 40,
              ),
              inputs(),
              const SizedBox(
                height: 20,
              ),
              buttonSubmit(false)
            ]));
  }

  widgetLogo() {
    return Container(
      height: 80,
      width: 80,
      clipBehavior: Clip.hardEdge,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: ColorTheme.primary,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: ColorTheme.secondary.shade100,
            width: 2,
          )),
      child: const Image(
          width: 200,
          height: 200,
          image: AssetImage('assets/images/logo1.png')),
    );
  }

  inputs() {
    return Form(
        child: Column(
      children: [
        input_widget(
          labelText: "Email",
          onChanged: (p0) {
            // setState(() {
            //   // validator();
            // });

            // print(p0);
          },
          controller: _email_controller,
          textInputType: TextInputType.emailAddress,
        ),
      ],
    ));
  }

  buttonSubmit(bool disable) {
    return ElevatedButton(
      onPressed: disable
          ? null
          : (() {
              print(_email_controller.text);
              widget._loginBloc
                  .add(SendDataLoginEvent(email: _email_controller.text));
            }),
      // ignore: sort_child_properties_last
      child: const Padding(
        padding: const EdgeInsets.all(13),
        child: Text('Se connecter',
            style: TextStyle(
                // color: ColorTheme.primary,
                fontSize: 16,
                fontWeight: FontWeight.bold)),
      ),
      style: TextButton.styleFrom(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30))),
      ),
    );
  }
}
