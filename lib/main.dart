import 'package:flutter/material.dart';
import 'package:mela_messenger/screens/chat.dart';
import 'package:mela_messenger/screens/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login",
      routes: {
        '/': (context) => MyLogin(),
        "/chat": (context) => MyChat(),
      },
    );
  }
}
