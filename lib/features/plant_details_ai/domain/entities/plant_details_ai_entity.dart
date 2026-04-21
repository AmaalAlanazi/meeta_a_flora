import 'package:equatable/equatable.dart';

class PlantDetailsAiEntity extends Equatable {
  final String watering;
  final String sunlight;
  final String tips;

  const PlantDetailsAiEntity({
    required this.watering,
    required this.sunlight,
    required this.tips,
  });

  @override
  List<Object?> get props => [watering, sunlight, tips];
}
