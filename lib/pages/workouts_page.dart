import 'package:flutter/material.dart';
import '../models/workout.dart';
import 'exercises_page.dart';

class WorkoutsPage extends StatelessWidget {
  const WorkoutsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Workout> workouts = [
      Workout(name: "Push Day", date: DateTime.now(), exercises: []),
      Workout(name: "Pull Day", date: DateTime.now(), exercises: []),
      Workout(name: "Leg Day", date: DateTime.now(), exercises: []),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Workouts")),
      body: ListView.builder(
        itemCount: workouts.length,
        itemBuilder: (context, index) {
          final workout = workouts[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.all(16),
              leading: CircleAvatar(
                radius: 24,
                backgroundColor: Colors.greenAccent.withOpacity(0.2),
                child: const Icon(
                  Icons.fitness_center,
                  color: Colors.greenAccent,
                ),
              ),
              title: Text(
                workout.name,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "${workout.date.day}/${workout.date.month}/${workout.date.year}",
                style: TextStyle(color: Colors.grey.shade400),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ExercisesPage(workout: workout),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
