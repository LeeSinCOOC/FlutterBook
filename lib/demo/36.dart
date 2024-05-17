import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
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
        body: Stack(
          children: [const Center(child: CircularProgressIndicator(),),Center(
            child: FadeInImage.memoryNetwork(placeholder: kTransparentImage, image: 'https://picsum.photos/250?image=9'),
          )],
        ),
      ),
    );
  }
}
