import 'package:comicsapp/features/auth/domain/entities/user.dart';

abstract class AuthRepository {
  Future<User> login(String email, String password);
  Future<User> checkAuthStatus(String token);
}
