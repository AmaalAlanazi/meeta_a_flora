import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meeta_a_flora/features/plant/domain/entities/plant_entity.dart';

part 'plant_model.freezed.dart';
part 'plant_model.g.dart';

@freezed
abstract class PlantModel with _$PlantModel {
  const factory PlantModel({
    required int id,
    required String name,
    required String image,
  }) = _PlantModel;

  factory PlantModel.fromJson(Map<String, dynamic> json) =>
      _$PlantModelFromJson(json);
}

extension PlantModelMapper on PlantModel {
  PlantEntity toEntity() {
    return PlantEntity(name: name, image: image);
  }
}
