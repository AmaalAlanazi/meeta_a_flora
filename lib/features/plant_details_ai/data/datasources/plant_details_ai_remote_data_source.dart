import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:meeta_a_flora/core/errors/failure.dart';
import 'package:meeta_a_flora/core/services/gemini_service.dart';
import 'package:meeta_a_flora/features/plant_details_ai/data/models/plant_details_ai_model.dart';

abstract class PlantDetailsAiRemoteDataSource {
  Future<Either<Failure, PlantDetailsAiModel>> getPlantDetails(
    String plantName,
  );
}

@LazySingleton(as: PlantDetailsAiRemoteDataSource)
class PlantDetailsAiRemoteDataSourceImpl
    implements PlantDetailsAiRemoteDataSource {
  final GeminiService service;

  PlantDetailsAiRemoteDataSourceImpl(this.service);

  @override
  Future<Either<Failure, PlantDetailsAiModel>> getPlantDetails(
    String plantName,
  ) async {
    try {
      final data = await service.getPlantDetails(plantName);

      final model = PlantDetailsAiModel.fromJson(data);

      return Right(model);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
