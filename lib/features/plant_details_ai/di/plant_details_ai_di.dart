import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'plant_details_ai_di.config.dart'; 

@InjectableInit(
  initializerName: 'initPlantDetailsAi',
   // Optional: specify the directory to scan for injectable annotations
  generateForDir: ['lib/features/plant_details_ai'],
)
void configurePlantDetailsAi(GetIt getIt) {
  getIt.initPlantDetailsAi();
}
