import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_boilerplate/login/services/login_service.dart';

class LoginRepository {
  final LoginService _authService;

  LoginRepository(this._authService);

  Future<String> login(String email, String password) async {
    return _authService.login(email, password);
  }
}

final authRepositoryProvider = Provider<LoginRepository>(
    (ref) => LoginRepository(ref.read(loginServiceProvider)));