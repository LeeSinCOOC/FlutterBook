import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var title = 'Fade in images';

    return MaterialApp(
        title: title,
        home: Scaffold(
            appBar: AppBar(
              title: Text(title),
            ),
            body: Center(
              child: Column(
                children: [
                  Image.asset('images/lake.jpg'),
                  FadeInImage.assetNetwork(
                      placeholder: 'images/lake.jpg',
                      image: 'https://picsum.photos/250?image=9')
                ],
              ),
            )));
  }
}
