import 'package:comicsapp/src/infrastructure/database/Workout_data.dart';
import 'package:comicsapp/src/presentation/StyledText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

// ignore: must_be_immutable
class ExerciseTitle extends StatelessWidget {
  final String exerciseName;
  final String weight;
  final String reps;
  final String sets;
  final bool isComplete;
  void Function(bool?)? onCheckBoxChanged;
  void Function(BuildContext?)? settingsExercise;
  void Function(BuildContext?)? deleteExercise;
  //* Functions for settings and delete.
  ExerciseTitle(
      {super.key,
      required this.exerciseName,
      required this.weight,
      required this.reps,
      required this.sets,
      required this.isComplete,
      required this.onCheckBoxChanged,
      required this.settingsExercise,
      required this.deleteExercise});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Slidable(
        endActionPane: ActionPane(motion: const StretchMotion(), children: [
          // Settings option
          SlidableAction(
            onPressed: settingsExercise,
            backgroundColor: Colors.grey.shade800,
            icon: Icons.settings,
            borderRadius: BorderRadius.circular(12),
          ),

          // Delete option.
          SlidableAction(
            onPressed: deleteExercise,
            backgroundColor: Colors.red.shade400,
            icon: Icons.delete,
            borderRadius: BorderRadius.circular(12),
          )
        ]),
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.grey[100],
          ),
          child: ListTile(
            title: Text(exerciseName),
            subtitle: Row(
              children: [
                // * Weight
                Chip(label: Text("${weight}kg")),
                const SizedBox(width: 8),
                //* Reps
                Chip(label: Text("${reps}reps")),
                const SizedBox(width: 8),
                // * Sets
                Chip(label: Text("${sets}sets")),
              ],
            ),
            trailing: Checkbox(
              value: isComplete,
              onChanged: (value) => onCheckBoxChanged!(value),
            ),
          ),
        ),
      ),
    );
  }
}
