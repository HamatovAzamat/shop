import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/models/order.dart';
import 'package:shop_app/screens/product_screen.dart';

class OrderWidget extends StatelessWidget {
  OrderItem orderItem;

  OrderWidget(this.orderItem);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Get.to(ProductScreen(orderItem.product));
      },
      title: Text(orderItem.product.title),
      leading: Icon(Icons.arrow_right_alt_sharp),
      trailing: Text(orderItem.quantity.toString()),
    );
  }
}