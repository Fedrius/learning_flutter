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
  // an array of strings called products
  // use underscore naming convention for var if used in same class
  List<String> _products = ['Food Testfeertt'];

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
            // an array of 1 btn and cards
            children: [
              Container(
                margin: EdgeInsets.all(10.0),
                child: RaisedButton(
                  onPressed: () {
                    // have to update the state for the app to recognize variable changes
                    setState(() {
                      _products.add('Advanced food tester');
                      // console log
                      print(_products);
                    });
                  },
                  child: Text('Add Product'),
                ),
              ),
              Column(
                children: _products
                    // using the product array, map func iterates and makes a card for each on and 'to list' lists it out.
                    .map(
                      (element) => Card(
                            child: Column(
                              children: <Widget>[
                                Image.asset('assets/food.jpg'),
                                Text(element)
                              ],
                            ),
                          ),
                    )
                    .toList(),
              )
            ],
          )),
    );
  }
}
