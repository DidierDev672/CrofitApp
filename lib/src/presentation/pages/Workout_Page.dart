import 'package:comicsapp/src/infrastructure/database/Workout_data.dart';
import 'package:comicsapp/src/presentation/Widget/exercise_title.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WorkoutPage extends StatefulWidget {
  final String workoutName;
  const WorkoutPage({super.key, required this.workoutName});

  @override
  State<WorkoutPage> createState() => _WorkoutPage();
}

class _WorkoutPage extends State<WorkoutPage> {
  // Checkbox was tapped.
  void onCheckBoxChanged(String workoutName, String exerciseName) {
    Provider.of<WorkoutData>(context, listen: false)
        .checkOffExercise(workoutName, exerciseName);
  }

  //Text controllers.
  final exerciseNameController = TextEditingController();
  final weightController = TextEditingController();
  final setsController = TextEditingController();
  final repsController = TextEditingController();
  //Create a new exercise.
  void createNewExercise() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('Add a new exercise'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  //Exercise Name.
                  TextField(controller: exerciseNameController),
                  // Weight
                  TextField(controller: weightController),
                  // reps
                  TextField(controller: repsController),
                  // sets
                  TextField(controller: setsController),
                ],
              ),
              actions: [
                // Save button.
                MaterialButton(onPressed: save, child: const Text('Save')),
                // Cancel button.
                MaterialButton(
                  onPressed: cancel,
                  child: const Text('Cancel'),
                )
              ],
            ));
  }

  // Save workout.
  void save() {
    String newExerciseName = exerciseNameController.text;
    String weight = weightController.text;
    String reps = repsController.text;
    String sets = setsController.text;
    Provider.of<WorkoutData>(context, listen: false).addExercise(
        widget.workoutName, newExerciseName, weight, reps, sets, false);
  }

  void cancel() {
    Navigator.pop(context);
    clear();
  }

  void clear() {
    exerciseNameController.clear();
    weightController.clear();
    setsController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<WorkoutData>(
      builder: (context, value, child) => Scaffold(
          appBar: AppBar(
            title: Text(widget.workoutName),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => createNewExercise(),
            child: const Icon(Icons.add),
          ),
          body: ListView.builder(
              itemCount: value.numberOfExerciseInWorkout(widget.workoutName),
              itemBuilder: (context, index) => ExerciseTitle(
                  exerciseName: value
                      .getRelevantWorkout(widget.workoutName)
                      .exercises[index]
                      .name,
                  weight: value
                      .getRelevantWorkout(widget.workoutName)
                      .exercises[index]
                      .weight,
                  reps: value
                      .getRelevantWorkout(widget.workoutName)
                      .exercises[index]
                      .repetitions,
                  sets: value
                      .getRelevantWorkout(widget.workoutName)
                      .exercises[index]
                      .sections,
                  isComplete: value
                      .getRelevantWorkout(widget.workoutName)
                      .exercises[index]
                      .isCompleted,
                  onCheckBoxChanged: (val) => onCheckBoxChanged(
                      widget.workoutName,
                      value
                          .getRelevantWorkout(widget.workoutName)
                          .exercises[index]
                          .name)))),
    );
  }
}
