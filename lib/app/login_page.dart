import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_guard_issue/app/auth_store.dart';
import 'package:flutter_triple/flutter_triple.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, AuthStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: MediaQuery.of(context).size.width),
          TripleBuilder<AuthStore, Exception, bool>(builder: (context, triple) {
            return Text('State: ${triple.state}');
          }),
          ElevatedButton(
            onPressed: () {
              store.login();

              Modular.to.navigate('/');
            },
            child: const Text('Login'),
          ),
        ],
      ),
    );
  }
}
