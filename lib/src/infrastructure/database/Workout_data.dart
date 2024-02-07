import 'package:comicsapp/src/infrastructure/database/hive_database.dart';
import 'package:comicsapp/src/utils/datatime/date_time.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/Workout.dart';
import '../../domain/entities/Exercise.dart';

class WorkoutData extends ChangeNotifier {
  final db = HiveDatabase();
  //* Default workout
  List<Workout> workoutList = [
    Workout(
      name: "Upper Body",
      exercises: [
        Exercise(
            name: "Bicep Curls",
            weight: "10",
            repetitions: "10",
            sections: "10",
            isCompleted: false),
      ],
    ),
    Workout(
      name: "Lower Body",
      exercises: [
        Exercise(
            name: "Squats",
            weight: "10",
            repetitions: "10",
            sections: "10",
            isCompleted: false),
      ],
    ),
  ];

  // If there are workouts already, in database, then get that workout list, otherwise use default workouts.
  void initalizeWorkoutList() {
    if (db.previusDataExists()) {
      workoutList = db.readFromDatabase();
    }
    //Otherwise use default workouts.
    else {
      db.saveToDatabase(workoutList);
    }

    // Load heat map.
    loadHeatMap();
  }

  //Get the list of workout
  List<Workout> getWorkoutList() {
    return workoutList;
  }

  //Get length of a given workout.
  int numberOfExerciseInWorkout(String workoutName) {
    Workout relevantWorkout = getRelevantWorkout(workoutName);

    return relevantWorkout.exercises.length;
  }

  // Add a workout
  void addWorkout(String name) {
    //Add new workout with a blank list of exercises.
    workoutList.add(Workout(name: name, exercises: []));
    notifyListeners();
    // Save to database
    db.saveToDatabase(workoutList);
  }

  // Add an exercise to a workout.
  void addExercise(String workoutName, String exerciseName, String weight,
      String repetitions, String sections, bool isComplete) {
    // Find the relevant workout.
    Workout relevantWorkout = getRelevantWorkout(workoutName);
    relevantWorkout.exercises.add(Exercise(
        name: exerciseName,
        weight: weight,
        repetitions: repetitions,
        sections: sections,
        isCompleted: false));

    notifyListeners();
    // Save to database
    db.saveToDatabase(workoutList);
  }

  //* Edit an workout in name.
  void editWorkout(String queryWorkout, String workoutName) {
    Workout filteredWorkout =
        workoutList.firstWhere((element) => element.name == queryWorkout);

    filteredWorkout.name = workoutName;
    notifyListeners();
    db.saveToDatabase(workoutList);
    loadHeatMap();
  }

  //* Edit  an existing exercise in a workout.
  void editExercise(String workoutName, String queryExercise,
      String exerciseName, String weight, String repetitions, String sections) {
    List<Exercise> filteredExercises =
        workoutList.firstWhere((w) => w.name == workoutName).exercises;

    Exercise e = filteredExercises
        .firstWhere((element) => element.name == queryExercise);

    //* Updates the assigned fiscal year.
    e.name = exerciseName;
    e.weight = weight;
    e.repetitions = repetitions;
    e.sections = sections;

    notifyListeners();
    db.saveToDatabase(workoutList);
    loadHeatMap();
  }

  // * Delete workout by name workout
  void deleteWorkout(String queryWorkout) {
    Workout filteredWorkout =
        workoutList.firstWhere((element) => element.name == queryWorkout);

    int index = workoutList.indexOf(filteredWorkout);
    workoutList.removeAt(index);
    notifyListeners();
    db.saveToDatabase(workoutList);
    loadHeatMap();
  }

  //* Delete exercise by name exercise
  void deleteExercise(String workoutName, String queryExercise) {
    List<Exercise> filteredExercises = workoutList
        .firstWhere((element) => element.name == workoutName)
        .exercises;

    Exercise e = filteredExercises
        .firstWhere((element) => element.name == queryExercise);

    int index = filteredExercises.indexOf(e);
    filteredExercises.removeAt(index);
    notifyListeners();
    db.saveToDatabase(workoutList);
    loadHeatMap();
  }

  //* Check off exercise.
  void checkOffExercise(String workoutName, String exerciseName) {
    // Find the relevant workout and relevant exercise in that workout.
    Exercise relevantExercise = getRevelantExercise(workoutName, exerciseName);

    // Check off boolean to show user completed the exercise.
    relevantExercise.isCompleted = !relevantExercise.isCompleted;
    notifyListeners();
    db.saveToDatabase(workoutList);
    loadHeatMap();
  }

  //* Return relevant workout object, given a workout name.
  Workout getRelevantWorkout(String workoutName) {
    Workout relevantWorkout =
        workoutList.firstWhere((workout) => workout.name == workoutName);

    return relevantWorkout;
  }

  //* Return relevant exercise object, given a workout name + exercise name
  Exercise getRevelantExercise(String workoutName, String exerciseName) {
    //Find relevant workout first.
    Workout relevantWorkout = getRelevantWorkout(workoutName);

    // The find the relevant exercise in that workout
    Exercise relevantExercise = relevantWorkout.exercises
        .firstWhere((exercise) => exercise.name == exerciseName);

    return relevantExercise;
  }

  //* Get start date
  String getStartDate() {
    return db.getStartDate();
  }

  /*
    HEAT MAP
   */
  Map<DateTime, int> heatMapDataSet = {};
  void loadHeatMap() {
    DateTime startDate = createDateTimeObject(db.getStartDate());

    // Count the number of days to load
    int daysInBetween = DateTime.now().difference(startDate).inDays;

    // Go from start date to today, and add each completion status to the dataset
    //"COMPLETION_STATUS_yyyy/mm/dd" will be the key in the database
    for (int i = 0; i < daysInBetween + 1; i++) {
      String yyyymmdd =
          convertDateTimeToYYYYMMDD(startDate.add(const Duration(days: 0)));

      // Complettion status = 0 or 1
      int completionStatus = db.getCompletedStatus(yyyymmdd);

      // Year
      int year = startDate.add(Duration(days: i)).year;
      // Month
      int month = startDate.add(Duration(days: i)).month;
      // Day
      int day = startDate.add(Duration(days: i)).day;

      final percentForEachDay = <DateTime, int>{
        DateTime(year, month, day): completionStatus
      };

      // Add to the heat map dataset.
      heatMapDataSet.addEntries(percentForEachDay.entries);
    }
  }
}
