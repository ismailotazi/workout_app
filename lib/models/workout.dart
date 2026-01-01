import 'exercise.dart';

class Workout {
  final String name;
  final DateTime date;
  final List<Exercise> exercises;
  Workout({required this.name, required this.date, required this.exercises});
}
