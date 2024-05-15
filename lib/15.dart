import 'package:flutter/material.dart';

List list = List<String>.generate(1000, (index) => 'Item $index');

void main() => runApp(MyApp(items:list));

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.items});
  final List items;

  @override
  Widget build(BuildContext context) {
    const String title = "Long list";
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: ListView.builder(
          itemCount: items.length,
          // 使用itemExtent: 100或者prototypeItem来指定元素的样式和布局，
          // 这样Flutter可以更有效地进行内存管理和滚动计算，因为它不必为每个项目单独测量尺寸。
          prototypeItem: ListTile(title: Text(items.first),),
          itemBuilder:(context, index) {
            return ListTile(title: Text(items[index]),);
          },),
      ),
    );
  }
}