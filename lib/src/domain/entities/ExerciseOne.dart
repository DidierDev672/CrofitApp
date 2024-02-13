class ExerciseOne {
  int idWorkout;
  int idExercise;
  int idCoach;
  int idStudent;
  String nameExercise;
  String weight;
  String repetitions;
  String sections;

  ExerciseOne(
      {required this.idWorkout,
      required this.idExercise,
      required this.idCoach,
      required this.idStudent,
      required this.nameExercise,
      required this.weight,
      required this.repetitions,
      required this.sections});

  Map<String, dynamic> toMap() {
    return {
      'idWorkout': idWorkout,
      'idExercise': idExercise,
      'idCoach': idCoach,
      'idStudent': idStudent,
      'nameExercise': nameExercise,
      'weight': weight,
      'repetitions': repetitions,
      'sections': sections
    };
  }

  factory ExerciseOne.fromMap(Map<String, dynamic> map) {
    return ExerciseOne(
        idWorkout: map['idWorkout'],
        idExercise: map['idExercise'],
        idCoach: map['idCoach'],
        idStudent: map['idStudent'],
        nameExercise: map['nameExercise'],
        weight: map['weight'],
        repetitions: map['repetitions'],
        sections: map['sections']);
  }
}
