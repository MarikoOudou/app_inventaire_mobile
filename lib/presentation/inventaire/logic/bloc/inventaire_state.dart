part of 'inventaire_bloc.dart';

@immutable
abstract class InventaireState {}

class InventaireInitial extends InventaireState {}

class UnInventaireState extends InventaireState {}

class ErrorInventaireState extends InventaireState {
  final String errorMessage;
  ErrorInventaireState({
    required this.errorMessage,
  });
}

class LoadDataForForm extends InventaireState {
  Codification codification;
  PeriodeInventaire periodeInventaire;
  LoadDataForForm({
    required this.codification,
    required this.periodeInventaire,
  });
}

class InInventaireState extends InventaireState {
  Inventaire inventaire;
  InInventaireState({
    required this.inventaire,
  });
}
