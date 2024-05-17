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
            child: ParentWidget(),
          )
          // #enddocregion addWidget
          ),
    );
  }
}

class TapboxB extends StatelessWidget {
  const TapboxB({super.key, this.active = false, required this.onChanged});
  final bool active;
  final ValueChanged<bool> onChanged;

  void _handleTap() {
    onChanged(!active);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: active ? Colors.lightGreen[700] : Colors.grey[600],
          ),
          child: Center(
            child: Text(
              active ? 'Active' : 'Inactive',
              style: const TextStyle(fontSize: 32, color: Colors.white),
            ),
          )),
    );
  }
}

class ParentWidget extends StatefulWidget {
  const ParentWidget({super.key});

  @override
  State<ParentWidget> createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
  bool _active = false;

  void _handleTapboxChanged(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: TapboxB(
      active: _active,
      onChanged: _handleTapboxChanged,
    ));
  }
}
