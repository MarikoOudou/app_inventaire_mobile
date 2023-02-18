import 'package:flutter/material.dart';
import 'package:inventaire_immobilier/shared/themes/ColorsTheme.dart';
import 'package:inventaire_immobilier/shared/widgets/AppBarTheme.dart';

import '../logic/bloc/home_bloc.dart';
import '../screen/home_screen.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/home';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _homeBloc = HomeBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.zero,
        child: AppBarThemeCustom.appBar("Home", context,
            backPage: false, statusBarColor: ColorTheme.grey),
      ),
      body: HomeScreen(homeBloc: _homeBloc),
    );
  }
}
