// my_page.dart
import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我的页面'),
      ),
      body: Center(
        child: Text('这是我的页面'),
      ),
    );
  }
}
