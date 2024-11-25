import 'package:flutter/material.dart';

class MentalExercisesScreen extends StatefulWidget {
  const MentalExercisesScreen({super.key});

  @override
  State<MentalExercisesScreen> createState() => _MentalExercisesScreenState();
}

class _MentalExercisesScreenState extends State<MentalExercisesScreen> {

  @override
  Widget build(BuildContext context) {
    String taskText = '';

    return Scaffold(
      appBar: AppBar(
        title: const Text('New Task'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (value) {
                taskText = value;
              },
              decoration: const InputDecoration(
                hintText: 'Enter your task here',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print(taskText);
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
