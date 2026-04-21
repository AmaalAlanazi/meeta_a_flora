import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:meeta_a_flora/core/errors/failure.dart';
import 'package:meeta_a_flora/features/plant_details_ai/domain/entities/plant_details_ai_entity.dart';
import 'package:meeta_a_flora/features/plant_details_ai/domain/repositories/plant_details_ai_repository_domain.dart';

@lazySingleton
class GetPlantDetailsAiUseCase {
  final PlantDetailsAiRepositoryDomain repository;

  GetPlantDetailsAiUseCase(this.repository);

  Future<Either<Failure, PlantDetailsAiEntity>> getPlantDetails(
    String plantName,
  ) {
    return repository.getPlantDetails(plantName);
  }
}
