import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meeta_a_flora/features/plant/data/datasources/plant_local_data_source.dart';

class PlantDiscoveryPage extends StatelessWidget {
  const PlantDiscoveryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Discover Plants 🌿")),
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: plants.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          final plant = plants[index];

          return GestureDetector(
            onTap: () {
              context.go('/details', extra: plant.name);
            },
            child: Card(
              child: Column(
                children: [
                  Expanded(child: Image.asset(plant.image, fit: BoxFit.cover)),
                  const SizedBox(height: 8),
                  Text(plant.name),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
