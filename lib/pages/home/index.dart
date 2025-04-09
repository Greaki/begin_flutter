import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container( // 对应底部导航栏主界面选项卡
      decoration: BoxDecoration(color: Colors.white),
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          Text("home page")
        ],
      ),
    );
  }
}