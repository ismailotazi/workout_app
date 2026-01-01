import 'package:flutter/material.dart';

class ProgressPage extends StatelessWidget {
  const ProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Progress 📊",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),

          SizedBox(height: 20),

          Card(
            child: ListTile(
              leading: Icon(Icons.fitness_center),
              title: Text("Total Workouts"),
              trailing: Text("0"),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(Icons.list),
              title: Text("Total Exercises"),
              trailing: Text("0"),
            ),
          ),

          SizedBox(height: 20),

          Text("Charts coming soon...", style: TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}
