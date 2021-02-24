import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../screens/product_screen.dart';
import '../models/product.dart';

class ProductItem extends StatelessWidget {
  Product product;

  ProductItem(this.product);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: GridTile(
          child: Image.network(product.imageUrl, fit: BoxFit.fill),
          footer: GridTileBar(
            backgroundColor: Colors.black54,
            title: Text(product.title, textAlign: TextAlign.center,),

          ),
        ),
      ),
      onTap: () {
        Route route =
            MaterialPageRoute(builder: (context) => ProductScreen(product));
        Navigator.push(context, route);
      },
    );
  }
}
