// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:meeta_a_flora/core/services/gemini_service.dart' as _i84;
import 'package:meeta_a_flora/features/plant_details_ai/data/datasources/plant_details_ai_remote_data_source.dart'
    as _i1036;
import 'package:meeta_a_flora/features/plant_details_ai/data/repositories/plant_details_ai_repository_data.dart'
    as _i309;
import 'package:meeta_a_flora/features/plant_details_ai/domain/repositories/plant_details_ai_repository_domain.dart'
    as _i805;
import 'package:meeta_a_flora/features/plant_details_ai/domain/use_cases/plant_details_ai_use_case.dart'
    as _i793;
import 'package:meeta_a_flora/features/plant_details_ai/presentation/cubit/plant_details_ai_cubit.dart'
    as _i368;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initPlantDetailsAi({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i1036.PlantDetailsAiRemoteDataSource>(
      () => _i1036.PlantDetailsAiRemoteDataSourceImpl(gh<_i84.GeminiService>()),
    );
    gh.lazySingleton<_i805.PlantDetailsAiRepositoryDomain>(
      () => _i309.PlantDetailsAiRepositoryImpl(
        gh<_i1036.PlantDetailsAiRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i793.GetPlantDetailsAiUseCase>(
      () => _i793.GetPlantDetailsAiUseCase(
        gh<_i805.PlantDetailsAiRepositoryDomain>(),
      ),
    );
    gh.factory<_i368.PlantDetailsAiCubit>(
      () => _i368.PlantDetailsAiCubit(gh<_i793.GetPlantDetailsAiUseCase>()),
    );
    return this;
  }
}
