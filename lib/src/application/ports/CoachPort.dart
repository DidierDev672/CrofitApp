import '../../domain/entities/Coach.dart';

abstract class CoachRepository {
  Future<Coach?> login(String email, String password);
  Future<void> closeSession();
  Future<bool> estaAutenticado();
  Future<Coach?> getCurrentUser();
}
