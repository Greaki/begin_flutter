// tag_bar.dart
import 'package:flutter/material.dart';

class TagBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        // 设置一个合理的高度，根据实际需求调整
        height: 48.0,
        child: ListView(
          scrollDirection: Axis.horizontal, // 设置为水平滚动
          children: [
            Chip(
              label: Text('#热门话题'),
              backgroundColor: Colors.blue[100],
            ),
            SizedBox(width: 8),
            Chip(
              label: Text('#美食分享'),
              backgroundColor: Colors.grey[200],
            ),
            SizedBox(width: 8),
            Chip(
              label: Text('#旅行日记'),
              backgroundColor: Colors.grey[200],
            ),
            SizedBox(width: 8),
            Chip(
              label: Text('#生活趣事'),
              backgroundColor: Colors.grey[200],
            ),
            SizedBox(width: 8),
            Chip(
              label: Text('#科技前沿'),
              backgroundColor: Colors.grey[200],
            ),
            SizedBox(width: 8),
            Chip(
              label: Text('#娱乐新闻'),
              backgroundColor: Colors.grey[200],
            ),
          ],
        ),
      ),
    );
  }
}
