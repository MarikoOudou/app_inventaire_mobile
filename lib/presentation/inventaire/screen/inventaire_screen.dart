import 'package:art_sweetalert/art_sweetalert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventaire_immobilier/presentation/inventaire/logic/bloc/inventaire_bloc.dart';
import 'package:inventaire_immobilier/shared/widgets/input_widget.dart';
import 'package:select_form_field/select_form_field.dart';

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

  final List<Map<String, dynamic>> _items = [
    {
      'value': 'BON',
      'label': 'Bon',
      // 'icon': Icon(Icons.stop),
    },
    {
      'value': 'DEFAILLANT',
      'label': 'Défaillant',
      // 'icon': Icon(Icons.fiber_manual_record),
      // 'textStyle': TextStyle(color: Colors.red),
    },
    // {
    //   'value': 'starValue',
    //   'label': 'Star Label',
    //   // 'enable': false,
    //   // 'icon': Icon(Icons.grade),
    // },
  ];

  TextEditingController _etat_controller = TextEditingController();
  TextEditingController _code_inventaire_controller =
      TextEditingController(text: 'INV001');
  TextEditingController _observaton_controller = TextEditingController();

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
          // return Center(
          //   child: CircularProgressIndicator(),
          // );
          return body();
        });
  }

  body() {
    return Container(padding: EdgeInsets.all(20), child: Formulaire());
  }

  Formulaire() {
    return Form(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        TextField(
          enabled: false,
          controller: _code_inventaire_controller,
          decoration: InputDecoration(

              // enabledBorder: InputBorder.none,
              // border: InputBorder.none,
              // prefixIcon: const Icon(
              //   Icons.email_outlined,
              //   size: 20,
              // ),
              border: OutlineInputBorder(
                // gapPadding: 1,
                borderRadius: BorderRadius.circular(10.0),
              ),
              // filled: true,
              // hintStyle: TextStyle(color: Colors.grey[800]),

              // hintText: "Type in your text",

              // label: Text("data"),
              labelText: 'OBSERVATION',
              alignLabelWithHint: false,
              floatingLabelAlignment: FloatingLabelAlignment.center,
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              labelStyle: TextStyle(),
              hintTextDirection: TextDirection.ltr,
              fillColor: Colors.white70),
        ),

        SizedBox(
          height: 20,
        ),

        TextField(
          maxLines: 6, //or null
          controller: _observaton_controller,
          decoration: InputDecoration(
              // enabledBorder: InputBorder.none,
              // border: InputBorder.none,
              // prefixIcon: const Icon(
              //   Icons.email_outlined,
              //   size: 20,
              // ),
              border: OutlineInputBorder(
                // gapPadding: 1,
                borderRadius: BorderRadius.circular(10.0),
              ),
              filled: true,
              // hintStyle: TextStyle(color: Colors.grey[800]),

              // hintText: "Type in your text",

              // label: Text("data"),
              labelText: 'OBSERVATION',
              alignLabelWithHint: false,
              floatingLabelAlignment: FloatingLabelAlignment.center,
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              labelStyle: TextStyle(),
              hintTextDirection: TextDirection.ltr,
              fillColor: Colors.white70),
        ),

        // SizedBox(
        //   height: 20,
        // ),
        // input_widget(
        //   labelText: "Observation",
        //   onChanged: (p0) {
        //     // setState(() {
        //     //   validator();
        //     // });

        //     print(p0);
        //   },
        //   controller: _etat_controller,
        //   textInputType: TextInputType.name,
        // ),
        SizedBox(
          height: 20,
        ),
        SelectFormField(
          type: SelectFormFieldType.dropdown, // or can be dialog
          // initialValue: 'circle',
          // icon: Icon(Icons.format_shapes),
          controller: _etat_controller,
          decoration: InputDecoration(
              // enabledBorder: InputBorder.none,
              // border: InputBorder.none,
              // prefixIcon: const Icon(
              //   Icons.email_outlined,
              //   size: 20,
              // ),
              border: OutlineInputBorder(
                // gapPadding: 1,
                borderRadius: BorderRadius.circular(10.0),
              ),
              filled: true,
              // hintStyle: TextStyle(color: Colors.grey[800]),

              // hintText: "Type in your text",

              // label: Text("data"),
              labelText: 'ETAT',
              alignLabelWithHint: false,
              floatingLabelAlignment: FloatingLabelAlignment.center,
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              labelStyle: TextStyle(),
              hintTextDirection: TextDirection.ltr,
              fillColor: Colors.white70),
          // labelText: 'ETAT',
          items: _items,
          onChanged: (val) => print(val),
          onSaved: (val) => print(val),
        ),
        SizedBox(
          height: 15,
        ),
        buttonSubmit(false)
      ],
    ));
  }

  buttonSubmit(bool disable) {
    return ElevatedButton(
      onPressed: disable
          ? null
          : (() {
              // Navigator.pushNamedAndRemoveUntil(
              //     context, "/home", (route) => false);
              ArtSweetAlert.show(
                  context: context,
                  artDialogArgs: ArtDialogArgs(
                      type: ArtSweetAlertType.success,
                      // onConfirm: () {
                      //   print('object');
                      // },
                      confirmButtonText: 'Retour',
                      title: "A success message!",
                      text: "Show a success message with an icon"));
            }),
      child: Padding(
        padding: EdgeInsets.all(13),
        child: Text('Enregistrer',
            style: TextStyle(
                // color: ColorTheme.primary,
                fontSize: 16,
                fontWeight: FontWeight.bold)),
      ),
      style: TextButton.styleFrom(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
      ),
    );
  }

  void _load() {
    widget._inventaireBloc.add(LoadInventaireEvent());
  }
}
