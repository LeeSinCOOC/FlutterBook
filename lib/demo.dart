import 'package:flutter/material.dart';

void main() {
  const String title = 'demo';
  return runApp(MaterialApp(
    title: title,
    home: Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: const MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
