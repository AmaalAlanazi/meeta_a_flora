import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meeta_a_flora/features/plant_details_ai/domain/entities/plant_details_ai_entity.dart';

part 'plant_details_ai_model.freezed.dart';
part 'plant_details_ai_model.g.dart';

@freezed
abstract class PlantDetailsAiModel with _$PlantDetailsAiModel {
  const factory PlantDetailsAiModel({
    required String watering,
    required String sunlight,
    required String tips,
  }) = _PlantDetailsAiModel;

  factory PlantDetailsAiModel.fromJson(Map<String, dynamic> json) =>
      _$PlantDetailsAiModelFromJson(json);
}

extension PlantDetailsAiMapper on PlantDetailsAiModel {
  PlantDetailsAiEntity toEntity() {
    return PlantDetailsAiEntity(
      watering: watering,
      sunlight: sunlight,
      tips: tips,
    );
  }
}
