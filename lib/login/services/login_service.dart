import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_boilerplate/provider/dio_provider.dart';

class LoginService {
  final Ref _ref;

  LoginService(this._ref);

  Future<String> login(String email, String password) async {
    /// TODO: login api call
    // final dio = _ref.watch(dioProvider);
    // final response = await dio.get('login', queryParameters: {});

    return Future.delayed(const Duration(seconds: 3))
        .then((value) => 'authToken');
  }
}

final loginServiceProvider = Provider<LoginService>((ref) => LoginService(ref));
