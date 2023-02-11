import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventaire_immobilier/presentation/inventaire/logic/bloc/inventaire_bloc.dart';

class InventaireScreen extends StatefulWidget {
  const InventaireScreen({
    required InventaireBloc inventaireBloc,
    Key? key,
  })  : _inventaireBloc = inventaireBloc,
        super(key: key);

  final InventaireBloc _inventaireBloc;

  @override
  InventaireScreenState createState() {
    return InventaireScreenState();
  }
}

class InventaireScreenState extends State<InventaireScreen> {
  InventaireScreenState();

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
    return BlocBuilder<InventaireBloc, InventaireState>(
        bloc: widget._inventaireBloc,
        builder: (
          BuildContext context,
          InventaireState currentState,
        ) {
          if (currentState is UnInventaireState) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (currentState is ErrorInventaireState) {
            return Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Text(currentState.errorMessage ),
                Padding(
                  padding: const EdgeInsets.only(top: 32.0),
                  // child: RaisedButton(
                  //   color: Colors.blue,
                  //   child: Text('reload'),
                  //   onPressed: _load,
                  // ),
                ),
              ],
            ));
          }
          if (currentState is InInventaireState) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Text(currentState.hello),
                ],
              ),
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        });
  }

  void _load() {
    widget._inventaireBloc.add(LoadInventaireEvent());
  }
}
