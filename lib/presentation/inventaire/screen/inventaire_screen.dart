import 'package:api_inventaire/api.dart';
import 'package:art_sweetalert/art_sweetalert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inventaire_immobilier/presentation/inventaire/logic/bloc/inventaire_bloc.dart';
import 'package:inventaire_immobilier/shared/constants/storage_keys.dart';
import 'package:inventaire_immobilier/shared/storage.dart';
import 'package:inventaire_immobilier/shared/themes/ColorsTheme.dart';
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
  bool isActiveForm = false;
  Codification codification = Codification(nInventaire: "");
  PeriodeInventaire periodeInventaire = PeriodeInventaire();
  Users users = Users();

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

  TextEditingController _code_inventaire_controller = TextEditingController();
  TextEditingController _libelle_immo_controller =
      TextEditingController(text: "écran HP");
  TextEditingController _libelle_localisation_controller =
      TextEditingController(text: "Service comptabilite entreprise");
  TextEditingController _code_localisation_controller =
      TextEditingController(text: "CEN01ET17O3");
  TextEditingController _libelle_complementaire_controller =
      TextEditingController(text: "HP 27F");

  TextEditingController _etat_controller = TextEditingController();
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
    Size size = MediaQuery.of(context).size;

    return BlocBuilder<InventaireBloc, InventaireState>(
        bloc: widget._inventaireBloc,
        builder: (
          BuildContext context,
          InventaireState currentState,
        ) {
          if (currentState is UnInventaireState) {
            return Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
          if (currentState is ErrorInventaireState) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              ArtSweetAlert.show(
                  context: context,
                  artDialogArgs: ArtDialogArgs(
                      type: ArtSweetAlertType.danger,
                      // onConfirm: () {
                      //   print('object');
                      // },
                      confirmButtonText: 'Retour',
                      title: "Erreur",
                      text: currentState.errorMessage.toString()));
              // Navigator.pushNamedAndRemoveUntil(
              //     context, "/home", (route) => false);
            });
            return pageInit(size, context);
          }

          if (currentState is InfoInventaireState) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              ArtSweetAlert.show(
                  context: context,
                  artDialogArgs: ArtDialogArgs(
                      type: ArtSweetAlertType.info,
                      // onConfirm: () {
                      //   print('object');
                      // },
                      confirmButtonText: 'Retour',
                      title: "Information",
                      text: currentState.message.toString()));
              // Navigator.pushNamedAndRemoveUntil(
              //     context, "/home", (route) => false);
            });
            return pageInit(size, context);
          }

          if (currentState is InInventaireState) {
            return pageInit(size, context);
          }
          if (currentState is LoadDataForForm) {
            _code_inventaire_controller = TextEditingController(
                text: currentState.codification.nInventaire.toString());

            _code_localisation_controller = TextEditingController(
                text: currentState.codification.codeLocalisation.toString());

            _libelle_localisation_controller = TextEditingController(
                text: currentState.codification.libelleLocalisation.toString());

            _libelle_complementaire_controller = TextEditingController(
                text: currentState.codification.libelle_complementaire
                    .toString());

            _libelle_immo_controller = TextEditingController(
                text: currentState.codification.libelleImmo.toString());

            codification = currentState.codification;
            periodeInventaire = currentState.periodeInventaire;
            return body(size);
          }

          if (currentState is CreateInventaireState) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              ArtSweetAlert.show(
                  context: context,
                  artDialogArgs: ArtDialogArgs(
                      type: ArtSweetAlertType.success,
                      // onConfirm: () {
                      //   print('object');
                      // },
                      confirmButtonText: 'Retour',
                      title: "SUCCES",
                      text: currentState.message.toString()));
              // Navigator.pushNamedAndRemoveUntil(
              //     context, "/home", (route) => false);
            });
            return pageInit(size, context);
          }

          return pageInit(size, context);
        });
  }

  Container pageInit(Size size, BuildContext context) {
    return Container(
      width: double.infinity,
      height: size.height - 25,
      color: ColorTheme.grey,
      child: Center(
        child: TextButton.icon(
            onPressed: (() {
              Navigator.pop(context);
            }),
            icon: const Icon(Icons.arrow_back),
            label: const Text('RETOUR A L\'ACCUEIL')),
      ),
    );
  }

  body(Size size) {
    return SingleChildScrollView(
      child: Container(
          color: ColorTheme.grey,
          width: double.infinity,
          height: size.height - 25,
          padding: EdgeInsets.all(20),
          child: Formulaire()),
    );
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
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              labelText: 'N° INVENTAIRE',
              // alignLabelWithHint: false,
              floatingLabelAlignment: FloatingLabelAlignment.center,
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              // labelStyle: TextStyle(),
              // hintTextDirection: TextDirection.rtl,
              fillColor: Colors.white70),
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          enabled: true,
          controller: _libelle_immo_controller,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              labelText: 'Libelle Immo',
              // alignLabelWithHint: false,
              floatingLabelAlignment: FloatingLabelAlignment.center,
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              // labelStyle: TextStyle(),
              // hintTextDirection: TextDirection.rtl,
              fillColor: Colors.white70),
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          enabled: true,
          controller: _libelle_complementaire_controller,
          // onChanged: (value) {
          //   setState(() {
          //     if (!value.isEmpty) {
          //       if (!_etat_controller.text.isEmpty) {
          //         isActiveForm = true;
          //       }
          //     } else {
          //       _observaton_controller.text = "";
          //     }
          //   });
          // },
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              labelText: 'Libelle Complementaire',
              // alignLabelWithHint: false,
              floatingLabelAlignment: FloatingLabelAlignment.center,
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              // labelStyle: TextStyle(),
              // hintTextDirection: TextDirection.rtl,
              fillColor: Colors.white70),
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          enabled: true,
          controller: _libelle_localisation_controller,
          // onChanged: (value) {
          //   setState(() {
          //     if (!value.isEmpty) {
          //       if (!_etat_controller.text.isEmpty) {
          //         isActiveForm = true;
          //       }
          //     } else {
          //       _observaton_controller.text = "";
          //     }
          //   });
          // },
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              labelText: 'Libelle Localisation',
              // alignLabelWithHint: false,
              floatingLabelAlignment: FloatingLabelAlignment.center,
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              // labelStyle: TextStyle(),
              // hintTextDirection: TextDirection.rtl,
              fillColor: Colors.white70),
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          enabled: true,
          // onChanged: (value) {
          //   setState(() {
          //     if (!value.isEmpty) {
          //       if (!_etat_controller.text.isEmpty) {
          //         isActiveForm = true;
          //       }
          //     } else {
          //       _observaton_controller.text = "";
          //     }
          //   });
          // },
          controller: _code_localisation_controller,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              labelText: 'Code Localisation',
              // alignLabelWithHint: false,
              floatingLabelAlignment: FloatingLabelAlignment.center,
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              // labelStyle: TextStyle(),
              // hintTextDirection: TextDirection.rtl,
              fillColor: Colors.white70),
        ),
        const SizedBox(
          height: 20,
        ),
        SelectFormField(
          type: SelectFormFieldType.dropdown,
          controller: _etat_controller,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              filled: true,
              labelText: 'ETAT',
              alignLabelWithHint: false,
              floatingLabelAlignment: FloatingLabelAlignment.center,
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              labelStyle: TextStyle(),
              // hintTextDirection: TextDirection.ltr,
              fillColor: Colors.white70),
          items: _items,
          // onChanged: (val) {
          //   setState(() {
          //     // print(_etat_controller.text);s
          //     if (!_etat_controller.text.isEmpty) {
          //       isActiveForm = true;
          //     }
          //   });
          // },
        ),
        const SizedBox(
          height: 15,
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          maxLines: 5, //or null
          controller: _observaton_controller,

          // onChanged: (value) {
          //   setState(() {
          //     if (!value.isEmpty) {
          //       print(_observaton_controller.text);
          //       // _observaton_controller.text = value;
          //       if (!_etat_controller.text.isEmpty) {
          //         isActiveForm = true;
          //       }
          //     } else {
          //       _observaton_controller.text = "";
          //     }
          //   });
          // },
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              filled: true,
              labelText: 'OBSERVATION',
              alignLabelWithHint: false,
              floatingLabelAlignment: FloatingLabelAlignment.center,
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              labelStyle: TextStyle(),
              // hintTextDirection: TextDirection.rtl,
              fillColor: Colors.white70),
        ),
        buttonSubmit(isActiveForm)
      ],
    ));
  }

  buttonSubmit(bool disable) {
    return ElevatedButton(
      onPressed: disable
          ? null
          : (() async {
              users.id = int.parse(await Storage.get(StorageKeys.id) ?? "0");
              users.userId =
                  int.parse(await Storage.get(StorageKeys.id) ?? "0");

              // print(_libelle_complementaire_controller.text);

              Inventaire inventaire = Inventaire(
                  observations: _observaton_controller.text,
                  etat: _etat_controller.text,
                  libelle_complementaire:
                      _libelle_complementaire_controller.text,
                  libelle_immo: _libelle_immo_controller.text,
                  code_localisation: _code_localisation_controller.text,
                  libelle_localisation: _libelle_localisation_controller.text,
                  nomAgent: await Storage.get(StorageKeys.fullname),
                  dateInventaire: DateTime.now(),
                  codification: codification,
                  periodeInventaire: periodeInventaire,
                  user: users);
              widget._inventaireBloc
                  .add(CreateInventaireEvent(inventaire: inventaire));
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
