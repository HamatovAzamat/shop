import 'package:flutter/foundation.dart';
import 'product.dart';
import 'package:get/get.dart';

class OrderItem {
  Product product;
  int quantity;

  OrderItem({@required this.product, @required this.quantity});

  void setProduct(Product p) {
    this.product = p;
  }
}

List<OrderItem> allProducts = [];

