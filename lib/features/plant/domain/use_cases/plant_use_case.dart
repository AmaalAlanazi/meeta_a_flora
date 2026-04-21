import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:meeta_a_flora/core/errors/failure.dart';
import 'package:meeta_a_flora/features/plant/domain/entities/plant_entity.dart';
import 'package:meeta_a_flora/features/plant/domain/repositories/plant_repository_domain.dart';

@lazySingleton
class PlantUseCase {
  final PlantRepositoryDomain _repositoryData;

  PlantUseCase(this._repositoryData);

  Future<Result<PlantEntity, Failure>> getPlant() async {
    return _repositoryData.getPlant();
  }
}
