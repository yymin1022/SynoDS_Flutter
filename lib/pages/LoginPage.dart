import 'package:flutter/material.dart';
import 'package:syno_ds/main.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final synoDSApp = context.findAncestorStateOfType<SynoDSAppState>();

    return(
      Scaffold(
        body: (
          SafeArea(
            child: (
              Column(
                children: [
                  const Text("Login Page"),
                  ElevatedButton(
                    onPressed: (){tryLogin(synoDSApp);},
                    child: const Text("Login")
                  )
                ],
              )
            )
          )
        )
      )
    );
  }

  void tryLogin(synoDSApp) {
    synoDSApp.setState(() {
      synoDSApp.isLoggedIn = true;
    });
  }
}