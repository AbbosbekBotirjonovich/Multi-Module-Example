part of 'auth_repository.dart';

class _AuthRepositoryImpl implements AuthRepository {
  final AuthService _authService;

  _AuthRepositoryImpl(this._authService);

  @override
  Future<void> login(String email, String password) {
    // TODO: implement login
    throw UnimplementedError();
  }
}
