import 'package:flutter/material.dart';

void main() => runApp(const TabarDemo());

class TabarDemo extends StatelessWidget {
  const TabarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(length: 3, child: 
      Scaffold(appBar: AppBar(
        title: const Text('Tabs Demo'),
        bottom: const TabBar(tabs: [
          Tab(icon: Icon(Icons.directions_car),),
          Tab(icon: Icon(Icons.directions_transit),),
          Tab(icon: Icon(Icons.directions_bike),),
        ]),
        
      ),
      body: const TabBarView(children: [
        Icon(Icons.directions_car,size: 64,color: Colors.purple,),
        Icon(Icons.directions_transit,size: 64,color: Colors.purple,),
        Icon(Icons.directions_bike,size: 64,color: Colors.purple,)
      ]),)),
    );
  }
}