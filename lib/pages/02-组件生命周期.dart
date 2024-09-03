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
          '计数器',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: count < 10 ? MyInfo(count: count) : null,
      floatingActionButton: FloatingActionButton(
        // 点击
        onPressed: () {
          // 更改状态 setState
          setState(() {
            count++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

// 在这个组件观察生命周期
class MyInfo extends StatefulWidget {
  MyInfo({super.key, required this.count});

  // build 使用 widget.count 访问
  int count;

  @override
  _MyInfoState createState() {
    debugPrint('createState');
    return _MyInfoState();
  }
}

class _MyInfoState extends State<MyInfo> {
  int age = 0;

  @override
  void initState() {
    debugPrint('initState');
    // 获取数据，发请求
    super.initState();
  }

  // 只会被执行1次
  @override
  void didChangeDependencies() {
    debugPrint('didChangeDependencies');
    super.didChangeDependencies();
  }

  @override
  void deactivate() {
    debugPrint('deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    debugPrint('dispose');
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant MyInfo oldWidget) {
    debugPrint('didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('build');
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            age++;
          });
        },
        child: Text('计数器：${widget.count}, 今年$age岁'),
      ),
    );
  }
}
