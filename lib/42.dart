import 'package:flutter/material.dart';
import 'package:hookdemo/demo/39.dart';

void main() {
  return runApp(const MaterialApp(
    title: "Navigation Basics",
    home: FirstScreen(),
  ));
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const SecondPage();
                }));
              },
              child: const Text('Open Route'))),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
          child:
              ElevatedButton(onPressed: () {
                Navigator.pop(context);
              }, child: const Text('Go back!'))),
    );
  }
}
