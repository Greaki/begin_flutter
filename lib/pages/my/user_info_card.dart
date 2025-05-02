import 'package:flutter/material.dart';

class UserInfoCard extends StatelessWidget {
  const UserInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(12),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            const CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage('assets/avatar.jpg'), // 替换为实际头像
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('陈小明', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 4),
                  Text('ID: 88888888'),
                  SizedBox(height: 4),
                  Text('热爱生活，享受每一天', style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text('编辑资料'),
            ),
          ],
        ),
      ),
    );
  }
}
