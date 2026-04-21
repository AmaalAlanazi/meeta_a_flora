import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meeta_a_flora/features/plant/domain/use_cases/plant_use_case.dart';
import 'package:meeta_a_flora/features/plant/presentation/cubit/plant_state.dart';

@injectable
class PlantCubit extends Cubit<PlantState> {
  final PlantUseCase _plantUseCase;

  PlantCubit(this._plantUseCase) : super(PlantInitialState());

  Future<void> getPlantMethod() async {
    emit(PlantLoadingState());
    final result = await _plantUseCase.getPlant();
    result.when(
      (success) {
        emit(PlantSuccessState());
      },
      (whenError) {
        emit(PlantErrorState(message: whenError.message));
      },
    );
  }
}
