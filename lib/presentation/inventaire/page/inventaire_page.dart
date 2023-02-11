import 'package:flutter/material.dart';
import 'package:inventaire_immobilier/presentation/inventaire/logic/bloc/inventaire_bloc.dart';
import 'package:inventaire_immobilier/presentation/inventaire/screen/inventaire_screen.dart';

class InventairePage extends StatefulWidget {
  static const String routeName = '/inventaire';

  @override
  _InventairePageState createState() => _InventairePageState();
}

class _InventairePageState extends State<InventairePage> {
  final _inventaireBloc = InventaireBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inventaire'),
      ),
      body: InventaireScreen(inventaireBloc: _inventaireBloc),
    );
  }
}
