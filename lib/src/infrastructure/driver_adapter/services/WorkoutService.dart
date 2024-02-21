import '../../database/WorkoutOne_data.dart';

import '../../../domain/entities/WorkoutOne.dart';

// ignore: must_be_immutable
class WorkoutService {
  final data = WorkoutOneData();
  List<WorkoutOne> listWorkouts = [
    WorkoutOne(idCoach: 1, idUser: 2, idWorkout: 1, nameWorkout: 'Dynamic Fit'),
    WorkoutOne(idCoach: 1, idUser: 2, idWorkout: 2, nameWorkout: 'Full Sweat'),
    WorkoutOne(
        idCoach: 1, idUser: 2, idWorkout: 2, nameWorkout: 'Intense Power'),
    WorkoutOne(
        idCoach: 1, idUser: 2, idWorkout: 3, nameWorkout: 'Global Balance')
  ];

  List<WorkoutOne> getAllWorkouts() {
    return data.readWorkouts();
  }

  WorkoutOne createWorkout(int idCoach, int idUser, String nameWorkout) {
    final idWork = DateTime.now().microsecondsSinceEpoch.toString();
    final workouts =
        data.createWorkout(idCoach, idUser, int.parse(idWork), nameWorkout);
    return workouts;
  }

  List<WorkoutOne> getWorkout(int idCoach) {
    List<WorkoutOne> listWorkout = [];
    for (var item in listWorkouts) {
      if (item.idCoach == idCoach) {
        listWorkout.add(item);
      }
    }
    return listWorkout;
  }
}
