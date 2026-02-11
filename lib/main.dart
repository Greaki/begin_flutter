import 'package:flutter/material.dart';
import 'package:flutter_code/pages/test/index.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'pages/home/index.dart';
import 'pages/login/index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (_, __) {
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
    );
  }
}
