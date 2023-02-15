part of 'inventaire_bloc.dart';

@immutable
abstract class InventaireState {}

class InventaireInitial extends InventaireState {}

class UnInventaireState extends InventaireState {}

class ErrorInventaireState extends InventaireState {
  final Object errorMessage;
  ErrorInventaireState({
    required this.errorMessage,
  });
}

class InInventaireState extends InventaireState {
  Codification codification;
  InInventaireState({
    required this.codification,
  });
}
