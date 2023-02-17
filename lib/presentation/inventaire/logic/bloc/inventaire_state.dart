part of 'inventaire_bloc.dart';

@immutable
abstract class InventaireState {}

class InventaireInitial extends InventaireState {}

class UnInventaireState extends InventaireState {}

class CreateInventaireState extends InventaireState {
  final String message;
  CreateInventaireState({
    required this.message,
  });
}

class ErrorInventaireState extends InventaireState {
  final String errorMessage;
  ErrorInventaireState({
    required this.errorMessage,
  });
}

class InfoInventaireState extends InventaireState {
  final String message;
  InfoInventaireState({
    required this.message,
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
