// my_page.dart
import 'package:flutter/material.dart';
import 'user_info_card.dart';
import 'statistics_card.dart';
import 'menu_list.dart';

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我的'),
        centerTitle: true,
      ),
      body: ListView(
          children: const [
            UserInfoCard(),
            StatisticsCard(),
            MenuList(),
            // FooterPlaceholder()
          ]
      ),
    );
  }
}
