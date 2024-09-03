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
        width: 200,
        height: 300,
        color: Colors.green,
        // child: Image.network(
        //   'https://yanxuan-item.nosdn.127.net/e529b6ab111ade9da9314867f98d360f.png',
        //   fit: BoxFit.contain,
        // ),
        child: Image.asset(
          'assets/qiche.png',
          width: 40,
          height: 40,
        ),
      ),
    );
  }
}
