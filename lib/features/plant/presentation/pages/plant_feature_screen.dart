import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meeta_a_flora/features/plant/data/datasources/plant_local_data_source.dart';
import 'package:meeta_a_flora/features/plant/presentation/widgets/build_plant_card.dart';
import 'package:meeta_a_flora/features/plant/presentation/widgets/plant_header_widget.dart';

class PlantFeatureScreen extends StatelessWidget {
  const PlantFeatureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Discover Plants 🌿"),
        centerTitle: true,
      ),

      body: Column(
        children: [
          const PlantHeaderWidget(),

          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              itemCount: plants.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 0.9,
              ),
              itemBuilder: (context, index) {
                final plant = plants[index];

                return GestureDetector(
                  onTap: () {
                    context.push('/plantDetailsAi', extra: plant.name);
                  },
                  child: buildPlantCard(plant),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
