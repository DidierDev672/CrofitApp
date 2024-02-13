import 'package:comicsapp/src/utils/datatime/date_time.dart';
import 'package:hive/hive.dart';
import '../../domain/entities/Coach.dart';

class CoachDatabase {
  final _boxCoaches = Hive.box('coaches');

  bool previusDataExists() {
    if (_boxCoaches.isEmpty) {
      print("Previous data does NOT exists.");
      _boxCoaches.put("START_DATE", todaysDateYYYYMMDD());
      return false;
    } else {
      print('Previous data does exists');
      return true;
    }
  }

  Future<void> saveCoach(Coach coach) {
    return _boxCoaches.put("COACHES", coach);
  }

  List<Coach> readFromDatabaseCoach() {
    List<Coach> listCoach = _boxCoaches.get("COACHES");
    return listCoach;
  }
}
