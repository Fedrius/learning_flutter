import 'package:flutter/material.dart';

import './product_manager.dart';

// Every component is a widget in flutter!
// alt+shift+f to format code
void main() => runApp(MyApp());

// Main widget tree
class MyApp extends StatelessWidget {
  @override // overriding the build method. easier to read for others
  Widget build(context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.deepPurple,
      ),
      home: Scaffold(
        //Top nav bar
        appBar: AppBar(
          title: Text('EasyList'),
        ),
        // shows in column format
        body: ProductManager(startingProduct: 'foooood tester'),
      ),
    );
  }
}
