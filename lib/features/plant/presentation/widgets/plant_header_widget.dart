import 'package:flutter/material.dart';

class PlantHeaderWidget extends StatelessWidget {
  const PlantHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Green Card
        Container(
          margin: const EdgeInsets.all(12),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.green[700],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Meet A Flora!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "Capture a live plant or pick one from the curated gallery.",
                style: TextStyle(color: Colors.white70),
              ),
              const SizedBox(height: 16),

              /// Button (UI فقط)
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Center(
                  child: Text(
                    "Capture Plant",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 10),

        /// Title
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Pick From The Gallery",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),

        const SizedBox(height: 10),
      ],
    );
  }
}
