import 'package:flutter/material.dart';

// Every component is a widget in flutter!
// alt+shift+f to format code
main() {
  runApp(MyApp());
}

// Main widget tree
class MyApp extends StatelessWidget {
  build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title: Text('EasyList'),
        ),
      ),
    ); //
  }
}
