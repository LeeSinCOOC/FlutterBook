import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

GridView gridView(BuildContext context) {
  return GridView.count(
      crossAxisCount: 2,
      children: List.generate(20, (index) {
        return Center(
          child: Text(
            'Item $index',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        );
      }));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = "Grid List";
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          child: gridView(context),
        ),
      ),
    );
  }
}
