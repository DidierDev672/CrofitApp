import 'package:comicsapp/src/utils/datatime/date_time.dart';
import 'package:hive/hive.dart';

import '../../domain/entities/Workout.dart';
import '../../domain/entities/Exercise.dart';

class HiveDatabase {
  //* Reference our hive box.
  final _myBox = Hive.box("workout_database1");

  // * Check if there is already data stored, if not, record the start date.
  bool previusDataExists() {
    if (_myBox.isEmpty) {
      print("Previous data does NOT exists.");
      _myBox.put("START_DATE", todaysDateYYYYMMDD());
      return false;
    } else {
      print("Previous data does exists");
      return true;
    }
  }

  //* Write data.
  void saveToDatabase(List<Workout> workouts) {
    // Convert workout objects into lists of strings so that we can save in hive.
    final workoutList = convertObjectToWorkoutList(workouts);
    final exerciseList = convertObjectToExerciseList(workouts);

    /*
      Check if any exercise have been done
      we will put a 0 or 1 for each yyyy/mm/dd date.
    */

    if (exerciseCompleted(workouts)) {
      _myBox.put("COMPLETED_STATUS_${todaysDateYYYYMMDD()}", 1);
    } else {
      _myBox.put("COMPLETED_STATUS_${todaysDateYYYYMMDD()}", 1);
    }

    //* Save into have
    _myBox.put("WORKOUTS", workoutList);
    _myBox.put("EXERCISE", exerciseList);
  }

  //* Read data, and return a list of workouts.
  List<Workout> readFromDatabase() {
    List<Workout> mySavedWorkouts = [];

    List<String> workoutNames = _myBox.get("WORKOUTS");
    final exerciseDetails = _myBox.get("EXERCISE");

    // Create workout objects.
    for (int i = 0; i < workoutNames.length; i++) {
      // Each workout can have multiple exercises.
      List<Exercise> exercisesInEachWorkout = [];

      for (int j = 0; j < exerciseDetails[i].length; j++) {
        // So add each exercise into a list.
        exercisesInEachWorkout.add(Exercise(
          name: exerciseDetails[i][j][0],
          weight: exerciseDetails[i][j][1],
          repetitions: exerciseDetails[i][j][2],
          sections: exerciseDetails[i][j][3],
          isCompleted: exerciseDetails[i][j][4] == "true" ? true : false,
        ));
      }

      // Create individual workout.
      Workout workout =
          Workout(name: workoutNames[i], exercises: exercisesInEachWorkout);

      // Add individual workout to overall list.
      mySavedWorkouts.add(workout);
    }
    return mySavedWorkouts;
  }

  //* Return completion status of given date yyyy/mm/dd.
  bool exerciseCompleted(List<Workout> workouts) {
    // Go thru each workout.
    for (var workout in workouts) {
      // Go thru each exercise in workout
      for (var exercise in workout.exercises) {
        if (exercise.isCompleted) {
          return true;
        }
      }
    }
    return false;
  }

  //* Return start date as yyyymmdd.
  String getStartDate() {
    return _myBox.get("START_DATE");
  }

  //* Return completion status of a give date yyyy/mm/dd.
  int getCompletedStatus(String yyyymmdd) {
    // Return 0 or 1, if null then return 0
    int completionStatus = _myBox.get("COMPLETION_STATUS_$yyyymmdd") ?? 0;
    return completionStatus;
  }
}

//* Convert workout objects into a list.
List<String> convertObjectToWorkoutList(List<Workout> workouts) {
  List<String> workoutList = [
    // eg. [upperbody, lowerbody
  ];

  for (int i = 0; i < workouts.length; i++) {
    // In each workout, add the name, followed by list of exercise.
    workoutList.add(workouts[i].name);
  }

  return workoutList;
}

//* Convert the exercise in a workout object into a list of strings.
List<List<List<String>>> convertObjectToExerciseList(List<Workout> workouts) {
  List<List<List<String>>> exerciseList = [];

  // Go through each workout.
  for (int i = 0; i < workouts.length; i++) {
    // Get exercises from each workout.
    List<Exercise> exerciseInWorkout = workouts[i].exercises;
    List<List<String>> individualWorkout = [];
    // Go through each exercise in exerciseList.
    for (int j = 0; j < exerciseInWorkout.length; j++) {
      List<String> individualExercise = [];
      individualExercise.addAll([
        exerciseInWorkout[j].name,
        exerciseInWorkout[j].weight,
        exerciseInWorkout[j].repetitions,
        exerciseInWorkout[j].sections,
        exerciseInWorkout[j].isCompleted.toString(),
      ]);
      individualWorkout.add(individualExercise);
    }
    exerciseList.add(individualWorkout);
  }

  return exerciseList;
}
