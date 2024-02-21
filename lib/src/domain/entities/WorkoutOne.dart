import 'package:hive_flutter/adapters.dart';

@HiveType(typeId: 0)
class WorkoutOne {
  @HiveField(0)
  int idCoach;
  @HiveField(2)
  int idUser;
  @HiveField(3)
  int idWorkout;
  @HiveField(4)
  String nameWorkout;

  WorkoutOne(
      {required this.idCoach,
      required this.idUser,
      required this.idWorkout,
      required this.nameWorkout});

  Map<String, dynamic> toMap() {
    return {
      'idCoach': idCoach,
      'idUser': idUser,
      'idWorkout': idWorkout,
      'nameWorkout': nameWorkout
    };
  }

  factory WorkoutOne.fromMap(Map<String, dynamic> map) {
    return WorkoutOne(
        idCoach: map['idCoach'],
        idUser: map['idUser'],
        idWorkout: map['idWorkout'],
        nameWorkout: map['nameWorkout']);
  }
}
