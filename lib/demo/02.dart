import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key, required this.title});
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(color: Colors.blue[500]),
      child: Row(children: [
        const IconButton(
          onPressed: null,
          icon: Icon(Icons.menu),
          tooltip: "Navigation menu",
        ),
        Expanded(child: title),
        const IconButton(
          onPressed: null,
          icon: Icon(Icons.search),
          tooltip: "Search",
        )
      ]),
    );
  }
}

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(children: [
        MyAppBar(
            title: Text(
          "Example title",
          style: Theme.of(context).primaryTextTheme.titleLarge,
        )),
        const Expanded(child: Text("Hello world!"))
      ]),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    title: "My App",
    debugShowCheckedModeBanner: false,
    home: SafeArea(child: MyScaffold()),
  ));
}
