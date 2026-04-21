import 'package:equatable/equatable.dart';
import 'package:meeta_a_flora/features/plant_details_ai/domain/entities/plant_details_ai_entity.dart';

abstract class PlantDetailsAiState extends Equatable {
  const PlantDetailsAiState();

  @override
  List<Object?> get props => [];
}

class PlantDetailsAiInitialState extends PlantDetailsAiState {}

class PlantDetailsAiLoadingState extends PlantDetailsAiState {}

class PlantDetailsAiSuccessState extends PlantDetailsAiState {
  final PlantDetailsAiEntity data;

  const PlantDetailsAiSuccessState({required this.data});

  @override
  List<Object?> get props => [data];
}

class PlantDetailsAiErrorState extends PlantDetailsAiState {
  final String message;
  const PlantDetailsAiErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}
