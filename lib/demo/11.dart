import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

ListView listView = ListView(
  scrollDirection: Axis.horizontal,
  children: [
    Container(
      width: 160,
      color: Colors.red,
    ),
    Container(
      width: 160,
      color: Colors.blue,
    ),
    Container(
      width: 160,
      color: Colors.green,
    ),
    Container(
      width: 160,
      color: Colors.yellow,
    ),
    Container(
      width: 160,
      color: Colors.orange,
    ),
    Container(
      width: 160,
      color: Colors.purple,
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = "Horizontal List 需要Shift+鼠标滚轮使用";
    return MaterialApp(
      title: title,
      home: Scaffold(
          appBar: AppBar(
        title: const Text(title),
        
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        child: listView,
      ),),
    );
  }
}
