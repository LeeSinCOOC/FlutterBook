import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: Scaffold(
        body: Center(
          child: MyButton(),
        ),
      ),
    ));

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("MyButton was tapped!");
      },
      child: Container(
        height: 60,
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.lightGreen[500]),
        child: const Center(child: Text("Engage"),),
      ),
    );
  }
}
