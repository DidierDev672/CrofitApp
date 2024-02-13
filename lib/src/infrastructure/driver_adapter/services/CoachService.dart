import '../../../domain/entities/Coach.dart';

class CoachService {
  List<Coach> listCoach = [
    Coach(
        id: 1,
        name: 'John',
        lastName: 'Doe',
        email: 'johndoe@example.com',
        password: 'password123',
        phone: '123456789',
        photoProfile: ''),
    Coach(
        id: 2,
        name: 'Jane',
        lastName: 'Smith',
        email: 'jane.smith@example.com',
        password: 'pass1234',
        phone: '987654321',
        photoProfile: ''),
    Coach(
        id: 3,
        name: 'Mike',
        lastName: 'Johnson',
        email: 'mike.johnson@example.com',
        password: 'mike123',
        phone: '55555555',
        photoProfile: ''),
    Coach(
        id: 4,
        name: 'Sarah',
        lastName: 'Brown',
        email: 'sarah.brown@example.com',
        password: 'brown456',
        phone: 'brown456',
        photoProfile: ''),
    Coach(
        id: 5,
        name: 'Chris',
        lastName: 'Davis',
        email: 'chris.davis@example.com',
        password: 'password786',
        phone: '999999999',
        photoProfile: ''),
    Coach(
        id: 6,
        name: 'Emily',
        lastName: 'Taylor',
        email: 'david.taylor@example.com',
        password: 'taylor46',
        phone: '888888888888888',
        photoProfile: '')
  ];

  List<Coach> startSession(String email, String password) {
    List<Coach> coachesFiltrados = [];
    for (var coach in listCoach) {
      if (coach.email == email && coach.password == password) {
        coachesFiltrados.add(coach);
      }
    }

    return coachesFiltrados;
  }

  List<Coach> detailCoach(int id) {
    List<Coach> coachDetail = [];
    for (var item in listCoach) {
      if (item.id == id) {
        coachDetail.add(item);
      }
    }

    return coachDetail;
  }
}
