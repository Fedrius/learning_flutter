import 'package:flutter/material.dart';

// Every component is a widget in flutter!
// alt+shift+f to format code
void main() => runApp(MyApp());

// Main widget tree
class MyApp extends StatelessWidget {
  @override // overriding a method. easier to read for others
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar( //Top nav bar
          title: Text('EasyList'),
        ), 
        body: Card(child: Column(children: <Widget>[
          Image.asset('assets/food.jpg'),
          Text('Food Paradisee')
        ],)),
      ),
    );
  }
}
