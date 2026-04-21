import 'package:flutter/material.dart';

Widget buildPlantCard(dynamic plant) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withAlpha(80),
          blurRadius: 8,
          offset: const Offset(0, 4),
        ),
      ],
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Stack(
        children: [
          Positioned.fill(child: Image.asset(plant.image, fit: BoxFit.cover)),

          /// Overlay
          Positioned.fill(child: Container(color: Colors.black.withAlpha(20))),

          Positioned(
            bottom: 10,
            left: 10,
            right: 10,
            child: Text(
              plant.name,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
