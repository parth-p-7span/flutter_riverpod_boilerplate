import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_boilerplate/login/controller/login_controller.dart';
import 'package:flutter_riverpod_boilerplate/login/controller/login_states.dart';
import 'package:flutter_riverpod_boilerplate/login/ui/login_screen.dart';
import 'package:flutter_riverpod_boilerplate/ui/home_screen.dart';
import 'package:go_router/go_router.dart';

final routerProvider = Provider<GoRouter>((ref) {
  final router = RouterNotifier(ref);

  return GoRouter(
    debugLogDiagnostics: true,
    refreshListenable: router,
    routes: router._routes,
    redirect: router._redirectLogic,
  );
});

class RouterNotifier extends ChangeNotifier {
  final Ref _ref;

  RouterNotifier(this._ref) {
    _ref.listen<LoginState>(
        loginControllerProvider, (previous, next) => notifyListeners());
  }

  String? _redirectLogic(GoRouterState state) {
    final loginState = _ref.read(loginControllerProvider);

    final areWeLoggingIn = state.location == '/login';

    if (loginState is LoginStateInitial) {
      return areWeLoggingIn ? null : '/login';
    }

    if (areWeLoggingIn) return '/';

    return null;
  }

  List<GoRoute> get _routes => [
        GoRoute(
            path: '/login',
            name: 'login',
            builder: (context, state) => const LoginScreen()),
        GoRoute(
            path: '/',
            name: 'home',
            builder: (context, state) => const HomeScreen()),
      ];
}
