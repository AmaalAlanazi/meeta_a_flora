import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meeta_a_flora/features/plant_details_ai/domain/use_cases/plant_details_ai_use_case.dart';
import 'package:meeta_a_flora/features/plant_details_ai/presentation/cubit/plant_details_ai_state.dart';

@injectable
class PlantDetailsAiCubit extends Cubit<PlantDetailsAiState> {
  final GetPlantDetailsAiUseCase _plantDetailsAiUseCase;

  PlantDetailsAiCubit(this._plantDetailsAiUseCase)
    : super(PlantDetailsAiInitialState());

  Future<void> getPlantDetailsAiMethod(String plantName) async {
    emit(PlantDetailsAiLoadingState()); 

    final result = await _plantDetailsAiUseCase.getPlantDetails(plantName);

    result.fold(
      (failure) {
        emit(PlantDetailsAiErrorState(message: failure.message));
      },
      (success) {
        emit(PlantDetailsAiSuccessState(data: success));
      },
    );
  }
}
