import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const apptitle = 'Form Styleing Demo';

    return MaterialApp(
      title: apptitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(apptitle),
        ),
        body: const MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatelessWidget {
  const MyCustomForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), 
                labelText: "Enter your username",
                hintText: "Enter a search term"),
                
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter your username'),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration: null,
          ),
        )
      ],
    );
  }
}
