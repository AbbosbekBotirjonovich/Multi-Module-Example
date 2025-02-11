import 'package:injectable/injectable.dart';
import 'package:remote/remote.dart';

part 'auth_repository_impl.dart';

@lazySingleton
abstract interface class AuthRepository {
  @factoryMethod
  factory AuthRepository(AuthService authService) = _AuthRepositoryImpl;
  Future<void> login(String email, String password);
}
