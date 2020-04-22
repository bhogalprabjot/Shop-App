import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/screens/products_details_screen.dart';

class ProductItem extends StatelessWidget {
  // final String id;
  // final String title;
  // final String imageUrl;

  // ProductItem({
  //   this.id,
  //   this.title,
  //   this.imageUrl,
  // });

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(ProductDetailScreen.routeName,
                arguments: product.id);
          },
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          title: Text(
            product.title,
            textAlign: TextAlign.center,
          ),
          leading: IconButton(
            color: Theme.of(context).accentColor,
            icon: Icon(product.isFav ? Icons.favorite : Icons.favorite_border),
            onPressed: () {
              product.toggleFavouriteStatus();
            },
          ),
          trailing: IconButton(
            color: Theme.of(context).accentColor,
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
