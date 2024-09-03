// 2. 有状态组件
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // 状态
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Container组件',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        width: 300,
        height: 300,
        // color: Colors.orange,
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.all(40),
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
            color: Colors.orange,
            // 使用 decoration 后背景颜色需要这里定义
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.red,
              width: 10,
            )),
        child: const Text('Inner'),
      ),
    );
  }
}
