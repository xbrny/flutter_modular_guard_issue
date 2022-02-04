import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_guard_issue/app/auth_store.dart';

class AuthGuard extends RouteGuard {
  AuthGuard() : super(redirectTo: '/login');

  @override
  Future<bool> canActivate(String path, ModularRoute route) {
    // After logout and try to login again, `value` somehow still false, expected to be true.
    final value = Modular.get<AuthStore>().state;

    return Future.value(value);
  }
}
