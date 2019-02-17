import 'package:flutter/material.dart';

// Every component is a widget in flutter!
// alt+shift+f to format code
void main() => runApp(MyApp());

// Main widget tree
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

// underscore should for classes that are only in the same file
// This state class belongs to the MyApp stateful widget
class _MyAppState extends State<MyApp> {
  @override // overriding the build method. easier to read for others
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
          //Top nav bar
          appBar: AppBar(
            title: Text('EasyList'),
          ),
          // shows in column format
          body: Column(
            // an array of btn and cards
            children: [
              Container(
                margin: EdgeInsets.all(10.0),
                child: RaisedButton(
                  onPressed: () {},
                  child: Text('Add Product'),
                ),
              ),
              Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/food.jpg'),
                    Text('Food Paradise')
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
