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
import 'package:meeta_a_flora/features/plant/data/datasources/plant_remote_data_source.dart'
    as _i607;
import 'package:meeta_a_flora/features/plant/data/repositories/plant_repository_data.dart'
    as _i395;
import 'package:meeta_a_flora/features/plant/domain/repositories/plant_repository_domain.dart'
    as _i137;
import 'package:meeta_a_flora/features/plant/domain/use_cases/plant_use_case.dart'
    as _i764;
import 'package:meeta_a_flora/features/plant/presentation/cubit/plant_cubit.dart'
    as _i887;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initPlant({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i607.BasePlantRemoteDataSource>(
      () => _i607.PlantRemoteDataSource(),
    );
    gh.lazySingleton<_i137.PlantRepositoryDomain>(
      () => _i395.PlantRepositoryData(gh<_i607.BasePlantRemoteDataSource>()),
    );
    gh.lazySingleton<_i764.PlantUseCase>(
      () => _i764.PlantUseCase(gh<_i137.PlantRepositoryDomain>()),
    );
    gh.factory<_i887.PlantCubit>(
      () => _i887.PlantCubit(gh<_i764.PlantUseCase>()),
    );
    return this;
  }
}
