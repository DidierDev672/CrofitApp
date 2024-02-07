import 'package:comicsapp/src/infrastructure/database/Workout_data.dart';
import 'package:comicsapp/src/presentation/StyledText.dart';
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
  String queryExercise = "";
  //Create a new exercise.
  void createNewExercise() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('Add a new exercise'),
              content: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    //Exercise Name.
                    TextField(
                        controller: exerciseNameController,
                        style: TextStyle(color: Colors.grey.shade800),
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey.shade500)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.purple.shade300)),
                            labelText: "Name Exercise")),
                    const SizedBox(height: 10),
                    // Weight
                    TextField(
                        controller: weightController,
                        keyboardType: TextInputType.number,
                        style: TextStyle(color: Colors.grey.shade800),
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey.shade500)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.purple.shade300)),
                            labelText: "Assign weight")),
                    const SizedBox(height: 10),
                    // reps
                    TextField(
                        controller: repsController,
                        keyboardType: TextInputType.number,
                        style: TextStyle(color: Colors.grey.shade800),
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey.shade500)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.purple.shade300)),
                            labelText: "Assign repetitions")),
                    const SizedBox(height: 10),
                    // sets
                    TextField(
                        controller: setsController,
                        keyboardType: TextInputType.number,
                        style: TextStyle(color: Colors.grey.shade800),
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey.shade500)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.purple.shade300)),
                            labelText: "Assign sections")),
                  ],
                ),
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

  void settingsExercise(String nameExercise) {
    queryExercise = nameExercise;
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18)),
              contentTextStyle: TextStyle(color: Colors.grey.shade800),
              title: const StyledText(
                  text: 'Edit exercise',
                  style: TextStyle(
                      fontSize: 19.5,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic)),
              content: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    //Exercise Name.
                    TextField(
                        controller: exerciseNameController,
                        style: TextStyle(color: Colors.grey.shade800),
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey.shade500)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.purple.shade300)),
                            labelText: "Name Exercise")),
                    const SizedBox(height: 10),
                    // Weight
                    TextField(
                        controller: weightController,
                        keyboardType: TextInputType.number,
                        style: TextStyle(color: Colors.grey.shade800),
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey.shade500)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.purple.shade300)),
                            labelText: "Assign weight")),
                    const SizedBox(height: 10),
                    // reps
                    TextField(
                        controller: repsController,
                        keyboardType: TextInputType.number,
                        style: TextStyle(color: Colors.grey.shade800),
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey.shade500)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.purple.shade300)),
                            labelText: "Assign repetitions")),
                    const SizedBox(height: 10),
                    // sets
                    TextField(
                        controller: setsController,
                        keyboardType: TextInputType.number,
                        style: TextStyle(color: Colors.grey.shade800),
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey.shade500)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.purple.shade300)),
                            labelText: "Assign sections")),
                  ],
                ),
              ),
              actions: [
                MaterialButton(
                    onPressed: editExercise, child: const Text('Edit')),
                // Cancel button.
                MaterialButton(
                  onPressed: cancel,
                  child: const Text('Cancel'),
                )
              ],
            ));
  }

  void editExercise() {
    String newExerciseName = exerciseNameController.text;
    String weight = weightController.text;
    String reps = repsController.text;
    String sets = setsController.text;
    /*if (newExerciseName != '' && weight != '' && reps != '' && sets != '') {
      Provider.of<WorkoutData>(context, listen: false).editExercise(
          widget.workoutName, newExerciseName, weight, reps, sets);
    }*/

    Provider.of<WorkoutData>(context, listen: false).editExercise(
        widget.workoutName, queryExercise, newExerciseName, weight, reps, sets);
  }

  // Save workout.
  void save() {
    String newExerciseName = exerciseNameController.text;
    String weight = weightController.text;
    String reps = repsController.text;
    String sets = setsController.text;
    if (newExerciseName != '' && weight != '' && reps != '' && sets != '') {
      Provider.of<WorkoutData>(context, listen: false).addExercise(
          widget.workoutName, newExerciseName, weight, reps, sets, false);
    }
  }

  void deleteExercise(String queryExercise, String nameExercise) {
    Provider.of<WorkoutData>(context, listen: false)
        .deleteExercise(queryExercise, nameExercise);
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
                            .name),
                    settingsExercise: (val) => settingsExercise(value
                        .getRelevantWorkout(widget.workoutName)
                        .exercises[index]
                        .name),
                    deleteExercise: (val) => deleteExercise(
                        widget.workoutName,
                        value
                            .getRelevantWorkout(widget.workoutName)
                            .exercises[index]
                            .name),
                  ))),
    );
  }
}
