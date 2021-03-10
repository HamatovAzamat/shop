import 'package:flutter/material.dart';
import '../controller/product_overview_screen_controller.dart';
import '../data.dart';
import '../models/product.dart';
import '../models/type.dart';
import '../models/order.dart' as global;



import '../widgets/ProductItem.dart';

class ProductOverviewScreen extends StatelessWidget {
  final Type type;


  ProductOverviewScreen( this.type);

  @override
  Widget build(BuildContext context) {
    final filtertedProducts = loadedProduct.where((product) {
      return (product.typeId == type.id)  ;
    }).toList();


    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        centerTitle: true,
        title: Text(type.name),
        backgroundColor: Colors.blue[900],
      ),
      body: ClipRRect(
        child: GridView.builder(
          padding: EdgeInsets.all(10.0),
          itemCount:
              (type.id != 0) ? filtertedProducts.length : loadedProduct.length,
          itemBuilder: (ctx, i) {
            if (type.id == 0) {
              return ProductItem(loadedProduct[i]);
            }
            else { return ProductItem(filtertedProducts[i]); }
          },
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 20.0),
        ),
      ),
    );
  }
}
