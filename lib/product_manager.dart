import 'package:flutter/material.dart';

import './products.dart';
import './product_control.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager({this.startingProduct = 'Sweets tester'}) {
    print('[ProductManager widget] Constructor');
  }

  @override
  State<StatefulWidget> createState() {
    print('[ProductManager widget] createState()');
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  // an array of strings called products
  // use underscore naming convention for var if used in same class
  List<String> _products = [];

  // ex: const [] means cannot add any more items to it at all once declared
  // List<String> _products = const [];

  // ex: final means can add more items but re-assign the variable
  // final List<String> _products = [];

  // connecting ProductManager outside variables 'startingProduct' to add to the _products when state is created initially.
  // string is passed into ProductManager() in the main.dart
  @override
  void initState() {
    print('[ProductManager State] initState()');
    super.initState();
    _products.add(widget.startingProduct);
  }

  // good for updating state when theres external data changing
  @override
  void didUpdateWidget(ProductManager oldWidget) {
    print('[ProductManager State] didUpdateWidget()');
    super.didUpdateWidget(oldWidget);
  }

  // need this function to update state when button is pressed.
  // function is passed into product_control because that is where the button
  void _addProduct(String product) {
    // have to update the state for the app to recognize variable changes
    setState(() {
      _products.add('Advanced food tester');
      // console log
      print(_products);
    });
  }

  @override
  Widget build(BuildContext context) {
    print('[ProductManager State] build()');
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          // passing in func, but not calling it
          child: ProductControl(_addProduct),
        ),
        // Calling the Product class and passing in the _products array
        // Creates the column of cards
        Products(_products)
      ],
    );
  }
}
