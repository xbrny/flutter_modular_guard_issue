import 'package:flutter_triple/flutter_triple.dart';

class AuthStore extends NotifierStore<Exception, bool> {
  AuthStore() : super(false);

  void login() {
    update(true);
  }

  void logout() {
    update(false);
  }
}
