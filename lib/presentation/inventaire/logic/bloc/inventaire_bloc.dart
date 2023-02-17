import 'package:api_inventaire/api.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:inventaire_immobilier/presentation/inventaire/data/repository/inventaireRepository.dart';

part 'inventaire_event.dart';
part 'inventaire_state.dart';

class InventaireBloc extends Bloc<InventaireEvent, InventaireState> {
  InventaireRepository inventaireRepository = new InventaireRepository();
  PeriodeInventaire _periodeInventaire = new PeriodeInventaire();
  Codification _codification = new Codification(nInventaire: '');
  InventaireBloc() : super(InventaireInitial()) {
    on<InventaireEvent>((event, emit) {
      // TODO: implement event handler
      if (event is InventaireEventData) {
        print(event.n_inventaire);
        getCodificationByN_Inventaire(event.n_inventaire);
        // emit(UnInventaireState());
      } else if (event is CreateInventaireEvent) {
        createInventaire(event.inventaire);
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
        _codification = Codification.fromJson(response.data)!;
        getPeriodeInventaire(
            Codification.fromJson(response.data)?.idCodification ?? 0);

        // emit(InInventaireState(
        //     codification: Codification?.fromJson(response.data) ??
        //         new Codification(nInventaire: '')));
      } else {
        emit(ErrorInventaireState(
          errorMessage: response.message ?? "",
        ));
      }
    });
  }

  getPeriodeInventaire(int id_codification) {
    inventaireRepository.getPeriodeInventaireIsActive().then((response) {
      print("Result Serveur : " + response.toString());

      if (response.status ?? true) {
        _periodeInventaire = PeriodeInventaire.fromJson(response.data)!;
        verifieInventaire(
            id_codification,
            PeriodeInventaire.fromJson(response.data)?.idPeriodeInventaire ??
                0);
      } else {
        emit(InfoInventaireState(
          message: response.message ?? "",
        ));
      }
    });
  }

  verifieInventaire(int id_codification, int id_periode_inventaire) {
    inventaireRepository
        .verifieInventaire(id_codification, id_periode_inventaire)
        .then((response) {
      print("Result Serveur : " + response.toString());

      if (response.status ?? true) {
        emit(LoadDataForForm(
            codification: _codification,
            periodeInventaire: _periodeInventaire));
      } else {
        emit(InfoInventaireState(
          message: response.message ?? "",
        ));
      }
    });
  }

  createInventaire(Inventaire inventaire) {
    emit(UnInventaireState());
    inventaireRepository.createInventaire(inventaire).then((response) {
      print("Result Serveur : " + response.toString());

      if (response.status ?? true) {
        emit(CreateInventaireState(message: response.message ?? ""));
      } else {
        emit(ErrorInventaireState(
          errorMessage: response.message ?? "",
        ));
      }
    });
  }
}
