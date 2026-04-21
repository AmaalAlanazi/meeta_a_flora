import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meeta_a_flora/features/plant_details_ai/presentation/cubit/plant_details_ai_cubit.dart';
import 'package:meeta_a_flora/features/plant_details_ai/presentation/cubit/plant_details_ai_state.dart';

class PlantDetailsAiFeatureScreen extends StatelessWidget {
  const PlantDetailsAiFeatureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Plant Care 🌿'), centerTitle: true),
      body: BlocBuilder<PlantDetailsAiCubit, PlantDetailsAiState>(
        builder: (context, state) {
          if (state is PlantDetailsAiLoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is PlantDetailsAiSuccessState) {
            final data = state.data;

            return SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  _buildCard(
                    icon: Icons.water_drop,
                    color: Colors.blue,
                    title: "Watering",
                    content: data.watering,
                  ),
                  const SizedBox(height: 16),

                  _buildCard(
                    icon: Icons.wb_sunny,
                    color: Colors.orange,
                    title: "Sunlight",
                    content: data.sunlight,
                  ),
                  const SizedBox(height: 16),

                  _buildCard(
                    icon: Icons.eco,
                    color: Colors.green,
                    title: "Tips",
                    content: data.tips,
                  ),
                ],
              ),
            );
          } else if (state is PlantDetailsAiErrorState) {
            return Center(
              child: Text(
                state.message,
                style: const TextStyle(color: Colors.red),
              ),
            );
          }

          return const Center(child: Text("No data"));
        },
      ),
    );
  }

  Widget _buildCard({
    required IconData icon,
    required Color color,
    required String title,
    required String content,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withAlpha(20),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: color.withAlpha(77)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: color, size: 28),
          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: color,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  content,
                  style: const TextStyle(fontSize: 14, height: 1.5),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
