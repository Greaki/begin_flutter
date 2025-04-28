// user_post_card.dart
import 'package:flutter/material.dart';
import './../detail/post_detail_page.dart'; // 导入详情页面

class UserPostCard extends StatelessWidget {
  final String avatarUrl;
  final String username;
  final String timeAgo;
  final String title;
  final String content;
  final String imageUrl;
  final int likes;
  final int comments;

  UserPostCard({
    required this.avatarUrl,
    required this.username,
    required this.timeAgo,
    required this.title,
    required this.content,
    required this.imageUrl,
    required this.likes,
    required this.comments,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: InkWell( // 使用 InkWell 包裹整个卡片
        onTap: () {
          // 导航到详情页面并传递数据
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PostDetailPage(
                avatarUrl: avatarUrl,
                username: username,
                timeAgo: timeAgo,
                title: title,
                content: content,
                imageUrl: imageUrl,
                likes: likes,
                comments: comments,
              ),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(avatarUrl),
                  ),
                  SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        username,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(timeAgo),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 8),
              Text(
                title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(content),
              SizedBox(height: 8),
              Image.network(imageUrl),
              SizedBox(height: 8),
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.favorite),
                    onPressed: () {},
                  ),
                  Text(likes.toString()),
                  SizedBox(width: 16),
                  IconButton(
                    icon: Icon(Icons.chat_bubble),
                    onPressed: () {},
                  ),
                  Text(comments.toString()),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.share),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
