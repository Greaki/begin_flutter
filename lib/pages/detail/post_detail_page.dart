// post_detail_page.dart
import 'package:flutter/material.dart';

class PostDetailPage extends StatelessWidget {
  final String avatarUrl;
  final String username;
  final String timeAgo;
  final String title;
  final String content;
  final String imageUrl;
  final int likes;
  final int comments;

  PostDetailPage({
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
    return Scaffold(
      appBar: AppBar(
        title: Text('帖子详情'),
      ),
      body: Padding(
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
    );
  }
}
