import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  final List<Widget> _children = [
    Stack(
      children: [
        ElevatedButton(
          onPressed: () => print('下层按钮被点击'),
          child: const Text('下层按钮'),
        ),
        ElevatedButton(
          onPressed: () => print('上层按钮被点击'),
          child: const Text('上层按钮'),
        ),
      ],
    ),
    Stack(
      children: [
        // 下层按钮
        ElevatedButton(
          onPressed: () => print('下层按钮被点击'),
          child: const Text('下层按钮'),
        ),
        // 上层忽略指针的容器
        IgnorePointer(
          ignoring: true, // 忽略事件，穿透到下层
          child: Container(
            width: 100,
            height: 100,
            color: Colors.red.withOpacity(0.5),
            child: Center(
                child: GestureDetector(
              onTap: () => print('子按钮被点击'),
              child: const Text('子按钮'),
            )),
          ),
        ),
      ],
    ),
    Stack(
      children: [
        // 下层按钮
        ElevatedButton(
          onPressed: () => print('下层按钮被点击'),
          child: const Text('下层按钮'),
        ),
        // 上层吸收指针的容器
        GestureDetector(
            onTap: () => print('上层按钮被点击'),
            child: AbsorbPointer(
                absorbing: true,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue.withOpacity(0.5),
                  child: GestureDetector(
                    onTap: () => print('阻断层被点击'),
                    child: const Text('阻断层'),
                  ),
                )))
      ],
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('测试'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _children,
          ),
        ),
      ),
    );
  }
}
