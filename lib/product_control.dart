import 'package:flutter/material.dart';

// stateless because just need to render the btn
class ProductControl extends StatelessWidget {
  // function is being passed into here
  // immutable
  final Function addProduct;

  ProductControl(this.addProduct);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      // using the primary color of the theme in main.dart
      color: Theme.of(context).primaryColor,
      onPressed: () {
        addProduct('Sweets');
      },
      child: Text('Add Product'),
    );
  }
}
