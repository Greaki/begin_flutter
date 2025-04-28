
import 'package:flutter/material.dart';
import 'first_page.dart';

// import './home.dart';
class HomePgae extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomePgae> {

  void _onItemTapped(int index) {
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: HomePage()
        // child: FirstPage(),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () => _onItemTapped(0),
            ),
            SizedBox(), // Empty space for the FloatingActionButton
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () => _onItemTapped(2),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle add button press
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blue, // 设置背景颜色
        foregroundColor: Colors.white, // 设置图标颜色
        elevation: 6.0, // 设置阴影效果
        highlightElevation: 12.0, // 按下时的阴影效果
        shape: CircleBorder(), // 确保按钮为圆形
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
