import 'package:flutter/material.dart';
import 'package:shop_app/screens/products_overview_screen.dart';

void main() => runApp(ShopApp());

class ShopApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: Text("Shop App"),
      // child: Center(
      //   child: Text("This is a shop app"),
      // ),
      home: ProductOverviewScreen(),
      
    );
  }
}
