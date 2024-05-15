import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: Center(
        child: Counter(),
      ),
    ),
  ));
}

class CounterDisplay extends StatelessWidget {
  const CounterDisplay({super.key, required this.count});
  final int count;
  @override
  Widget build(BuildContext context) {
    return Text("Count: $count");
  }
}

class CounterIncrement extends StatelessWidget {
  const CounterIncrement({super.key, required this.onPressed});
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: const Text('Increment'));
  }
}

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;
  void _increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CounterIncrement(onPressed: _increment),
        const SizedBox(
          width: 16,
        ),
        CounterDisplay(count: _counter)
      ],
    );
  }
}
