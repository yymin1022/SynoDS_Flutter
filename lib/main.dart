import 'package:flutter/material.dart';

import 'pages/LoginPage.dart';
import 'pages/MainPage.dart';

void main() {
  runApp(const SynoDSApp());
}

class SynoDSApp extends StatefulWidget {
  const SynoDSApp({super.key});

  @override
  State<StatefulWidget> createState() => SynoDSAppState();
}

class SynoDSAppState extends State<StatefulWidget> {
  var isLoggedIn = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Syno DS',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: isLoggedIn ? const MainPage() : const LoginPage()
    );
  }
}