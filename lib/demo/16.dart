import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = "Floating App Bar";
    return  MaterialApp(
        home: Scaffold(
            body: 
              CustomScrollView(
                slivers: [
                  const SliverAppBar(
                    title: Text(title),
                    floating: true,
                    flexibleSpace: Placeholder(),
                    expandedHeight: 100,
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate((context, index) => ListTile(
                      title: Text("Item $index"),
                    ),
                    childCount: 1000),
                  )
                ],
              )
              ),
            );
  }
}
