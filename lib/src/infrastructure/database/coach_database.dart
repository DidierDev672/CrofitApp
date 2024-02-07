import 'package:hive/hive.dart';
import '../../domain/entities/Coach.dart';

class CoachDatabase {
  final _box = Hive.box<Coach>('coaches');

  Future<Coach?> login(String email, String password) async {
    final coach = _box.get(email);
    if (coach != null && coach.password == password) {
      return coach;
    }
    return null;
  }
}
