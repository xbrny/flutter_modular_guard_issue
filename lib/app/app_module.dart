import 'package:flutter_modular_guard_issue/app/auth_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_guard_issue/app/home/home_module.dart';
import 'package:flutter_modular_guard_issue/app/login_page.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => AuthStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: HomeModule()),
    ChildRoute('/login', child: (_, __) => const LoginPage())
  ];
}
