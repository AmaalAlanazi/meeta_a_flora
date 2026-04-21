// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PlantModel _$PlantModelFromJson(Map<String, dynamic> json) => _PlantModel(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  image: json['image'] as String,
);

Map<String, dynamic> _$PlantModelToJson(_PlantModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
    };
