import 'package:multiple_result/multiple_result.dart';
import 'package:meeta_a_flora/core/errors/failure.dart';
import 'package:meeta_a_flora/features/plant/domain/entities/plant_entity.dart';

abstract class PlantRepositoryDomain {
    Future<Result<PlantEntity, Failure>> getPlant();
}
