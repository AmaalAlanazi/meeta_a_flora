
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:meeta_a_flora/core/errors/network_exceptions.dart';
import 'package:meeta_a_flora/core/errors/failure.dart';
import 'package:meeta_a_flora/features/plant/domain/entities/plant_entity.dart';

import 'package:meeta_a_flora/features/plant/data/datasources/plant_remote_data_source.dart';
import 'package:meeta_a_flora/features/plant/data/models/plant_model.dart';
import 'package:meeta_a_flora/features/plant/domain/repositories/plant_repository_domain.dart';

@LazySingleton(as: PlantRepositoryDomain)
class PlantRepositoryData implements PlantRepositoryDomain{
  final BasePlantRemoteDataSource remoteDataSource;


  PlantRepositoryData(this.remoteDataSource);

@override
  Future<Result<PlantEntity, Failure>> getPlant() async {
    try {
      final response = await remoteDataSource.getPlant();
      return Success(response.toEntity());
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
