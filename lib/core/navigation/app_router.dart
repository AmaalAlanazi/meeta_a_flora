import 'package:go_router/go_router.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'routers.dart';
import 'package:meeta_a_flora/features/plant/presentation/pages/plant_feature_screen.dart';
import 'package:meeta_a_flora/features/plant_details_ai/presentation/pages/plant_details_ai_feature_screen.dart';
import 'package:meeta_a_flora/features/plant/presentation/cubit/plant_cubit.dart';
import 'package:meeta_a_flora/features/plant_details_ai/presentation/cubit/plant_details_ai_cubit.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: Routes.plant,
    routes: [
      /// Plant Screen
      GoRoute(
        path: Routes.plant,
        builder: (context, state) {
          return BlocProvider(
            create: (_) => GetIt.I<PlantCubit>()..getPlantMethod(),
            child: const PlantFeatureScreen(),
          );
        },
      ),

      /// AI Details Screen
      GoRoute(
        path: Routes.plantDetailsAi,
        builder: (context, state) {
          final plantName = state.extra as String? ?? "rose";

          return BlocProvider(
            create: (_) =>
                GetIt.I<PlantDetailsAiCubit>()
                  ..getPlantDetailsAiMethod(plantName),
            child: const PlantDetailsAiFeatureScreen(),
          );
        },
      ),
    ],
  );
}
