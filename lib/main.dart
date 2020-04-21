import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/provider/products.dart';
import 'package:shop_app/screens/products_details_screen.dart';
import 'package:shop_app/screens/products_overview_screen.dart';

void main() => runApp(ShopApp());

class ShopApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Products(),
      child: MaterialApp(
        title: "Shop App",
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          accentColor: Colors.orange[900],
          fontFamily: 'Lato',
        ),
        home: ProductOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
        },
      ),
    );
  }
}
