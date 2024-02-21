import 'package:comicsapp/features/auth/domain/datasources/auth_datasource.dart';
import 'package:comicsapp/features/auth/domain/entities/user.dart';
import 'package:comicsapp/features/auth/domain/repositories/auth_repository.dart';
import '../infrastructure.dart';

class AuthRepositoryImp extends AuthRepository {
  final AuthDataSource dataSource;

  AuthRepositoryImp({AuthDataSource? dataSource})
      : dataSource = dataSource ?? AuthDataSourceImpl();

  @override
  Future<User> checkAuthStatus(String token) {
    return dataSource.checkAuthStatus(token);
  }

  @override
  Future<User> login(String email, String password) {
    return dataSource.login(email, password);
  }
}
