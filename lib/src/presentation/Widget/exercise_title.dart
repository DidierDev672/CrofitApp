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
      padding: const EdgeInsets.all(7.5),
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
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1.0,
                  blurRadius: 5.0,
                  offset: const Offset(0.0, 2.0))
            ],
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(colors: [
              Colors.grey.shade200,
              Colors.grey.shade200,
              Colors.grey.shade100
            ]),
          ),
          child: ListTile(
            title: StyledText(
              text: exerciseName,
              style:
                  const TextStyle(fontSize: 16.5, fontWeight: FontWeight.bold),
            ),
            subtitle: Row(
              children: [
                // * Weight
                Chip(
                    backgroundColor: Colors.blue.shade200,
                    shape: const StadiumBorder(),
                    padding: const EdgeInsets.all(8.0),
                    side: BorderSide.none,
                    label: StyledText(
                        text: "${weight}kg",
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w700))),
                const SizedBox(width: 8),
                //* Reps
                Chip(
                    backgroundColor: Colors.purple.shade200,
                    shape: const StadiumBorder(),
                    padding: const EdgeInsets.all(8.0),
                    side: BorderSide.none,
                    label: StyledText(
                      text: "${reps}reps",
                      style: const TextStyle(
                          fontWeight: FontWeight.w700, color: Colors.white),
                    )),
                const SizedBox(width: 8),
                // * Sets
                Chip(
                    backgroundColor: Colors.orange.shade200,
                    shape: const StadiumBorder(),
                    padding: const EdgeInsets.all(8.0),
                    side: BorderSide.none,
                    label: StyledText(
                      text: "${sets}sets",
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w700),
                    )),
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
