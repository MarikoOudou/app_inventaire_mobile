part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class UnHomeState extends HomeState {}

class ErrorHomeState extends HomeState {}

class InHomeState extends HomeState {}
