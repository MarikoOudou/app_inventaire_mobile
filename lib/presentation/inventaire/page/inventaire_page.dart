import 'package:flutter/material.dart';

import 'package:inventaire_immobilier/presentation/inventaire/logic/bloc/inventaire_bloc.dart';
import 'package:inventaire_immobilier/presentation/inventaire/screen/inventaire_screen.dart';
import 'package:inventaire_immobilier/shared/themes/ColorsTheme.dart';
import 'package:inventaire_immobilier/shared/widgets/AppBarTheme.dart';

class InventairePage extends StatefulWidget {
  static const String routeName = '/inventaire';

  final String dataToScan;
  const InventairePage({
    Key? key,
    required this.dataToScan,
  }) : super(key: key);

  @override
  _InventairePageState createState() => _InventairePageState();
}

class _InventairePageState extends State<InventairePage> {
  final _inventaireBloc = InventaireBloc();

  @override
  Widget build(BuildContext context) {
    _inventaireBloc.add(InventaireEventData(n_inventaire: widget.dataToScan));
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.zero,
        child: AppBarThemeCustom.appBar("Inventaire", context,
            backPage: false, statusBarColor: ColorTheme.grey),
      ),
      body: InventaireScreen(inventaireBloc: _inventaireBloc),
    );
  }
}
