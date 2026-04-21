import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:meeta_a_flora/core/errors/failure.dart';
import 'package:meeta_a_flora/features/plant_details_ai/data/datasources/plant_details_ai_remote_data_source.dart';
import 'package:meeta_a_flora/features/plant_details_ai/data/models/plant_details_ai_model.dart';
import 'package:meeta_a_flora/features/plant_details_ai/domain/entities/plant_details_ai_entity.dart';
import 'package:meeta_a_flora/features/plant_details_ai/domain/repositories/plant_details_ai_repository_domain.dart';

@LazySingleton(as: PlantDetailsAiRepositoryDomain)
class PlantDetailsAiRepositoryImpl implements PlantDetailsAiRepositoryDomain {
  final PlantDetailsAiRemoteDataSource remoteDataSource;

  PlantDetailsAiRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, PlantDetailsAiEntity>> getPlantDetails(
    String plantName,
  ) async {
    try {
      final result = await remoteDataSource.getPlantDetails(plantName);

      return result.fold((failure) => Left(failure), (model) {
        final entity = model.toEntity();
        return Right(entity);
      });
    } catch (error) {
      return Left(ServerFailure(error.toString()));
    }
  }
}
