import 'package:flutter/material.dart';

class MenuList extends StatelessWidget {
  const MenuList({super.key});

  Widget _buildTile(IconData icon, String title, String count) {
    return ListTile(
      leading: Icon(icon, color: Colors.blue),
      title: Text(title),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(count),
          const Icon(Icons.chevron_right),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTile(Icons.article, '我的帖子', '128'),
        _buildTile(Icons.thumb_up, '我的点赞', '896'),
        _buildTile(Icons.comment, '我的评论', '526'),
        _buildTile(Icons.star, '我的收藏', '89'),
      ],
    );
  }
}
