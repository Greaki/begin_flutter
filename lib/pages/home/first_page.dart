// first_page.dart
import 'package:flutter/material.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'search_bar.dart';
import 'tag_bar.dart';
import 'user_post_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _selectedTag = '#热门话题';
  List<Map<String, dynamic>> _postData = [];

  @override
  void initState() {
    super.initState();
    _loadData(_selectedTag);
  }

  Future<void> _refreshData() async {
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      _postData = _generateMockData(); // 模拟刷新后更新数据
    });
  }

  void _loadData(String tag) {
    // 根据 tag 加载对应数据
    setState(() {
      _postData = _generateMockData(); // 模拟加载数据
    });
  }

  List<Map<String, dynamic>> _generateMockData() {
    // 模拟不同标签下的数据（这里可以根据 tag 返回不同内容）
    return [
      {
        'avatarUrl': 'https://example.com/avatar1.jpg',
        'username': '陈美玲',
        'timeAgo': '2小时前',
        'title': '分享一下今天在家做的美食 🍽️',
        'content': '今天在家研究了一道新菜，红烧排骨配上清炒时蔬，搭配一碗米饭，简直完美！大家觉得看起来怎么样？',
        'imageUrl': 'https://example.com/food.jpg',
        'likes': 238,
        'comments': 46,
      },
      {
        'avatarUrl': 'https://example.com/avatar2.jpg',
        'username': '王建国',
        'timeAgo': '4小时前',
        'title': '周末徒步活动召集 🏃‍♂️',
        'content': '本周日组织徒步活动，路线是从白云山到流溪河，全程约 15 公里，难度适中。有兴趣的小伙伴可以报名参加！',
        'imageUrl': 'https://example.com/mountain.jpg',
        'likes': 156,
        'comments': 32,
      },
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('动态首页'),
      ),
      body: Column(
        children: [
          MySearchBar(),
          TagBar(
            onTagSelected: (tag) {
              _loadData(tag); // 当标签被点击时更新数据
            },
          ),
          Expanded(
              child: Padding(
            padding: EdgeInsets.fromLTRB(12.0, 0, 12.0, 0),
            child: EasyRefresh(
              onRefresh: _refreshData,
              child: ListView.builder(
                itemCount: _postData.length,
                itemBuilder: (context, index) {
                  var post = _postData[index];
                  return UserPostCard(
                    avatarUrl: post['avatarUrl'],
                    username: post['username'],
                    timeAgo: post['timeAgo'],
                    title: post['title'],
                    content: post['content'],
                    imageUrl: post['imageUrl'],
                    likes: post['likes'],
                    comments: post['comments'],
                  );
                },
              ),
            ),
          )),
          Container(
            height: 60,
            margin: EdgeInsets.all(16.0),
            child: Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/test');
                  },
                  child: const Text('跳转到test页面')),
            ),
          ),
        ],
      ),
    );
  }
}
