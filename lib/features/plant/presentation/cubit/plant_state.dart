import 'package:equatable/equatable.dart';

abstract class PlantState extends Equatable {
  const PlantState();

  @override
  List<Object?> get props => [];
}

class PlantInitialState extends PlantState {}

class PlantSuccessState extends PlantState {}

class PlantErrorState extends PlantState {
  final String message;
  const PlantErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}

class PlantLoadingState extends PlantState {}
