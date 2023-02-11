import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'inventaire_event.dart';
part 'inventaire_state.dart';

class InventaireBloc extends Bloc<InventaireEvent, InventaireState> {
  InventaireBloc() : super(InventaireInitial()) {
    on<InventaireEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
