import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "Flutter Tutorial",
    debugShowCheckedModeBanner: false,
    home: TutorialHome(),
  ));
}

class TutorialHome extends StatelessWidget {
  const TutorialHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(onPressed: null, icon: Icon(Icons.menu)),
        title: const Text('Example title'),
        actions: const [IconButton(onPressed: null, icon: Icon(Icons.search))],
      ),
      body: const Center(
        child: Text("Hello world!"),
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        tooltip: 'Add',
        child: Icon(Icons.add),
      ),
    );
  }
}
