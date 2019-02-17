import 'package:flutter/material.dart';

// seperating the products class
class Products extends StatelessWidget {
  // final - constant var
  final List<String> products;

  // a constructor. takes in the products array above
  Products(this.products);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: products
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
    );
  }
}
