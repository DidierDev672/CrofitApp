import 'package:comicsapp/config/config.dart';
import 'package:comicsapp/features/auth/domain/datasources/auth_datasource.dart';
import 'package:comicsapp/features/auth/domain/entities/user.dart';
import 'package:comicsapp/features/auth/infrastructure/infrastructure.dart';
import 'package:dio/dio.dart';

class AuthDataSourceImpl extends AuthDataSource {
  final dio = Dio(BaseOptions(baseUrl: Environment.apiUrl));
  @override
  Future<User> checkAuthStatus(String token) async {
    try {
      final response = await dio.get('/auth/check-status',
          options: Options(headers: {'Authorization': 'Bearer $token'}));

      final user = UserMapper.userJsonToEntity(response.data);
      return user;
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        throw CustomError('Token incorrecto');
      }
      throw Exception();
    } catch (e) {
      throw Exception();
    }
  }

  @override
  Future<User> login(String email, String password) async {
    try {
      final response = await dio
          .post('/auth/login', data: {'email': email, 'password': password});

      final user = UserMapper.userJsonToEntity(response.data);
      return user;
      // ignore: deprecated_member_use
    } on DioError catch (e) {
      if (e.response == null) {
        print("Message: ");
        print(e.message);
        print("Type: ");
        print(e.type);
        print("HashCode: ");
        print(e.hashCode);
        print("Stack Trace: ");
        print(e.stackTrace);
      }
      if (e.response?.statusCode == 401) {
        throw CustomError(
            e.response?.data['message'] ?? 'Credenciales incorrectas');
      }
      if (e.type == DioException.connectionTimeout) {
        print(e.error.hashCode);
        print(e.message);
        print(e.response);
        throw CustomError('Revisar conexion a internet');
      }
      if (e.type == DioException.connectionError) {
        print(e.message);
        print(e.requestOptions);
        print(e.type.name);
        print(e.stackTrace);
      }

      throw Exception();
    } catch (e) {
      throw Exception();
    }
  }
}
