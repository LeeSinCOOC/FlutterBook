import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter demo';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
          appBar: AppBar(
            title: const Text(appTitle),
          ),
          // #docregion addWidget
          body: const Center(
            child: TapboxA(),
          )
          // #enddocregion addWidget
          ),
    );
  }
}

class TapboxA extends StatefulWidget {
  const TapboxA({super.key});

  @override
  State<TapboxA> createState() => _TapboxAState();
}

class _TapboxAState extends State<TapboxA> {
  bool _active = false;
  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: _active? Colors.lightGreen[700] : Colors.grey[600],

        ),
        child: Center(child: Text(
          _active? 'Active' : 'Inactive',
          style: const TextStyle(fontSize: 32 ,color: Colors.white),
        )),
      ),
    );
  }
}
