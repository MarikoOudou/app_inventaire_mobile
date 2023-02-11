part of 'inventaire_bloc.dart';

@immutable
abstract class InventaireState {}

class InventaireInitial extends InventaireState {}

class UnInventaireState extends InventaireState {}

class ErrorInventaireState extends InventaireState {}

class InInventaireState extends InventaireState {}
