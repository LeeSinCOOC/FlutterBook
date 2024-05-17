import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = "Custom Themes";
    return MaterialApp(
      title: title,
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.purple, brightness: Brightness.dark),
          textTheme: const TextTheme(
            displayLarge: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
            titleLarge: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            bodyMedium: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            displaySmall: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          )),
      home: const MyHomePage(title: title),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: Theme.of(context).colorScheme.onSecondary),
        ),
        backgroundColor: Theme.of(context).colorScheme.secondary,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          color: Theme.of(context).colorScheme.primary,
          child: Text(
            'Text with a background color',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
          ),
        ),
      ),
      floatingActionButton: Theme(
          data: Theme.of(context).copyWith(
              colorScheme: ColorScheme.fromSeed(
                  seedColor: Colors.pink, brightness: Brightness.dark)),
          child: FloatingActionButton(onPressed: (){},child: const Icon(Icons.add),)),
    );
  }
}
