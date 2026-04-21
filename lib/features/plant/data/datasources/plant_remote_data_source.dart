import 'package:injectable/injectable.dart';
import 'package:meeta_a_flora/features/plant/data/models/plant_model.dart';
import 'package:meeta_a_flora/core/errors/network_exceptions.dart';

abstract class BasePlantRemoteDataSource {
  Future<PlantModel> getPlant();
}

@LazySingleton(as: BasePlantRemoteDataSource)
class PlantRemoteDataSource implements BasePlantRemoteDataSource {
  @override
  Future<PlantModel> getPlant() async {
    try {
      return PlantModel(id: 1, name: "Lily", image: "assets/images/lili.jpg");
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }
}
