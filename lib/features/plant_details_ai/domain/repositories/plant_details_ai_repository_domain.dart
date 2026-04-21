import 'package:fpdart/fpdart.dart';
import 'package:meeta_a_flora/core/errors/failure.dart';
import 'package:meeta_a_flora/features/plant_details_ai/domain/entities/plant_details_ai_entity.dart';

abstract class PlantDetailsAiRepositoryDomain {
  Future<Either<Failure, PlantDetailsAiEntity>> getPlantDetails(
    String plantName,
  );
}
