import '../../../domain/entities/ExerciseOne.dart';

class ExerciseService {
  List<ExerciseOne> listExercise = [];

  List<ExerciseOne> getExercise(int idCoach) {
    List<ExerciseOne> exercises = [];
    for (var exercise in listExercise) {
      // ignore: unrelated_type_equality_checks
      if (exercise.idCoach == idCoach) {
        exercises.add(exercise);
      }
    }
    return exercises;
  }

  createNewExercise(ExerciseOne exercise) {
    listExercise.add(exercise);
  }
}
