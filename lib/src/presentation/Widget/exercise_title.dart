import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ExerciseTitle extends StatelessWidget {
  final String exerciseName;
  final String weight;
  final String reps;
  final String sets;
  final bool isComplete;
  void Function(bool?)? onCheckBoxChanged;
  ExerciseTitle(
      {super.key,
      required this.exerciseName,
      required this.weight,
      required this.reps,
      required this.sets,
      required this.isComplete,
      required this.onCheckBoxChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: ListTile(
        title: Text(exerciseName),
        subtitle: Row(
          children: [
            // * Weight
            Chip(label: Text("${weight}kg")),
            //* Reps
            Chip(label: Text("${reps}reps")),
            // * Sets
            Chip(label: Text("${sets}sets"))
          ],
        ),
        trailing: Checkbox(
          value: isComplete,
          onChanged: (value) => onCheckBoxChanged!(value),
        ),
      ),
    );
  }
}
