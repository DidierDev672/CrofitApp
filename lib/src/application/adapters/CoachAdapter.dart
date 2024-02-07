import 'package:comicsapp/src/domain/entities/Coach.dart';
import 'package:comicsapp/src/domain/repositories/CoachRepository.dart';
import 'package:hive/hive.dart';

class CoachAdapter implements CoachRepository {
  final _box = Hive.box('coaches');

  @override
  Future<void> closeSession() {
    // TODO: implement closeSession
    throw UnimplementedError();
  }

  @override
  Future<bool> estaAutenticado() {
    // TODO: implement estaAutenticado
    throw UnimplementedError();
  }

  @override
  Future<Coach?> getCurrentUser() {
    // TODO: implement getCurrentUser
    throw UnimplementedError();
  }

  @override
  Future<Coach?> login(String email, String password) {
    // TODO: implement login
    throw UnimplementedError();
  }
}
