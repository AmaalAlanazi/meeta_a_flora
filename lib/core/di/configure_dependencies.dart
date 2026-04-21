import 'package:get_it/get_it.dart';
import 'package:meeta_a_flora/core/di/configure_dependencies.config.dart';
import 'package:injectable/injectable.dart';
import 'package:meeta_a_flora/features/plant/di/plant_di.dart';
import 'package:meeta_a_flora/features/plant_details_ai/di/plant_details_ai_di.dart';
@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
  generateForDir: ['lib/core'], // ✅ مهم
)
Future<void> configureDependencies() async {
  final getIt = GetIt.instance;

  getIt.init();

  configurePlant(getIt);
  configurePlantDetailsAi(getIt);
}