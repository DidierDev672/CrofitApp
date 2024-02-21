import 'package:comicsapp/src/domain/entities/WorkoutOne.dart';
import 'package:hive_flutter/adapters.dart';

class WorkoutOneData {
  final _boxWorkous = Hive.box<WorkoutOne>('workouts_database1');

  WorkoutOne createWorkout(
      int idCoach, int idUser, int idWorkout, String nameWorkout) {
    final workout = WorkoutOne(
        idCoach: idCoach,
        idUser: idUser,
        idWorkout: idWorkout,
        nameWorkout: nameWorkout);
    _boxWorkous.put("WORKOUTS", workout);
    return workout;
  }

  List<WorkoutOne> readWorkouts() {
    return _boxWorkous.values.toList();
  }

  void updateWorkout(WorkoutOne workout) {
    Hive.box<WorkoutOne>('workouts_database1').put(workout.idWorkout, workout);
  }

  void deleteWorkout(int idWorkout) {
    Hive.box<WorkoutOne>('workouts_database1').delete(idWorkout);
  }
}
