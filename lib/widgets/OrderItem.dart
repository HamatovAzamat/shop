import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/models/order.dart';
import 'package:shop_app/screens/product_screen.dart';

class OrderWidget extends StatelessWidget {
  OrderItem orderItem;

  OrderWidget(this.orderItem);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: ListTile(
        onTap: () {
          Get.to(ProductScreen(orderItem.product));
        },
        title: Text(orderItem.product.title),
        leading: Text(orderItem.quantity.toString(), style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        trailing: IconButton(
          icon: Icon(Icons.delete, color: Colors.blue[900]),
          onPressed: (){
            allProducts.remove(orderItem);
          },
        ),
      ),
    );
  }
}