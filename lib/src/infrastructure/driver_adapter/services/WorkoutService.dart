import '../../../domain/entities/WorkoutOne.dart';

class WorkoutService {
  List<WorkoutOne> listWorkouts = [
    WorkoutOne(idCoach: 1, idUser: 2, idWorkout: 1, nameWorkout: 'Dynamic Fit'),
    WorkoutOne(idCoach: 1, idUser: 2, idWorkout: 2, nameWorkout: 'Full Sweat'),
    WorkoutOne(
        idCoach: 1, idUser: 2, idWorkout: 2, nameWorkout: 'Intense Power'),
    WorkoutOne(
        idCoach: 1, idUser: 2, idWorkout: 3, nameWorkout: 'Global Balance')
  ];

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
