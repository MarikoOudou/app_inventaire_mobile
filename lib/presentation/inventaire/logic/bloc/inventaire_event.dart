part of 'inventaire_bloc.dart';

abstract class InventaireEvent {}

class LoadInventaireEvent extends InventaireEvent {}

class InventaireEventData extends InventaireEvent {
  String n_inventaire;
  InventaireEventData({
    required this.n_inventaire,
  });
}
