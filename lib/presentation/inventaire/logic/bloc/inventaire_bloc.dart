import 'package:api_inventaire/api.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:inventaire_immobilier/presentation/inventaire/data/repository/inventaireRepository.dart';

part 'inventaire_event.dart';
part 'inventaire_state.dart';

class InventaireBloc extends Bloc<InventaireEvent, InventaireState> {
  InventaireRepository inventaireRepository = new InventaireRepository();
  InventaireBloc() : super(InventaireInitial()) {
    on<InventaireEvent>((event, emit) {
      // TODO: implement event handler
      if (event is InventaireEventData) {
        print(event.n_inventaire);
        getCodificationByN_Inventaire(event.n_inventaire);
        // emit(UnInventaireState());
      }
    });
  }
  getCodificationByN_Inventaire(String n_inventaire) async {
    emit(UnInventaireState());
    inventaireRepository
        .getCodificationByN_Inventaire(n_inventaire: n_inventaire)
        .then((value) {
      ResponseData response = value;
      print("Result Serveur : " + response.toString());

      if (response.status ?? true) {
        emit(InInventaireState(
            codification: Codification?.fromJson(response.data) ??
                new Codification(nInventaire: '')));
      } else {
        emit(ErrorInventaireState(
          errorMessage: response.message ?? {},
        ));
      }
    });
  }
}
