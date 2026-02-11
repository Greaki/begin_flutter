import 'package:flutter/material.dart';
import 'package:flutter_code/pages/test/index.dart';
import 'pages/home/index.dart';
import 'pages/login/index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:  '/',
      routes: {
        '/': (context) => HomePgae(),
        '/blank': (context) => LoginPage(),
        '/test': (context) => TestPage(),
        // '/login'
      },
    );
  }
}
