import '../domain/entities/Coach.dart';

class Team {
  final List<Coach> _teams = [
    Coach(
        id: 1,
        fullName: 'Mario Alejandro Muñoz A',
        photo:
            "https://images.pexels.com/photos/6740292/pexels-photo-6740292.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
    Coach(
        id: 2,
        fullName: 'Candelaria Montiel Boleño',
        photo:
            'https://images.pexels.com/photos/18986392/pexels-photo-18986392/free-photo-of-young-sporty-woman-posing-in-gym.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')
  ];

  List<Coach> _coach = [];

  // Getter methods
  List<Coach> get manager => _teams;
  List<Coach> get coach => _coach;
}
