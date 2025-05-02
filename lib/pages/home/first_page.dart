
// home_page.dart
import 'package:flutter/material.dart';
import 'package:easy_refresh/easy_refresh.dart'; // 导入 EasyRefresh
import 'search_bar.dart';
import 'tag_bar.dart';
import 'user_post_card.dart';

class HomePage extends StatelessWidget {
  Future<void> _refreshData() async {
    // 模拟网络请求或数据加载
    await Future.delayed(Duration(seconds: 2)); // 延迟2秒，模拟刷新过程
    // 在这里添加实际的数据加载逻辑
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('动态首页'),
      ),
      body: Column(
        children: [
          MySearchBar(), // 搜索框固定在顶部
          TagBar(),
          Expanded(
            child: EasyRefresh(
              onRefresh: () async {
                await _refreshData(); // 刷新逻辑
              },
              child: ListView(
                children: [
                  UserPostCard(
                    avatarUrl: 'https://example.com/avatar1.jpg',
                    username: '陈美玲',
                    timeAgo: '2小时前',
                    title: '分享一下今天在家做的美食 🍽️',
                    content:
                    '今天在家研究了一道新菜，红烧排骨配上清炒时蔬，搭配一碗米饭，简直完美！大家觉得看起来怎么样？',
                    imageUrl: 'https://example.com/food.jpg',
                    likes: 238,
                    comments: 46,
                  ),
                  UserPostCard(
                    avatarUrl: 'https://example.com/avatar2.jpg',
                    username: '王建国',
                    timeAgo: '4小时前',
                    title: '周末徒步活动召集 🏃‍♂️',
                    content:
                    '本周日组织徒步活动，路线是从白云山到流溪河，全程约 15 公里，难度适中。有兴趣的小伙伴可以报名参加！',
                    imageUrl: 'https://example.com/mountain.jpg',
                    likes: 156,
                    comments: 32,
                  ),
                  UserPostCard(
                    avatarUrl: 'https://example.com/avatar2.jpg',
                    username: '王建国2',
                    timeAgo: '4小时前',
                    title: '周末徒步活动召集 🏃‍♂️',
                    content:
                    '本周日组织徒步活动，路线是从白云山到流溪河，全程约 15 公里，难度适中。有兴趣的小伙伴可以报名参加！',
                    imageUrl: 'https://example.com/mountain.jpg',
                    likes: 156,
                    comments: 32,
                  ),
                  UserPostCard(
                    avatarUrl: 'https://example.com/avatar2.jpg',
                    username: '王建国3',
                    timeAgo: '4小时前',
                    title: '周末徒步活动召集 🏃‍♂️',
                    content:
                    '本周日组织徒步活动，路线是从白云山到流溪河，全程约 15 公里，难度适中。有兴趣的小伙伴可以报名参加！',
                    imageUrl: 'https://example.com/mountain.jpg',
                    likes: 156,
                    comments: 32,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}