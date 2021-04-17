import 'package:flutter/foundation.dart';
import 'product.dart';
import 'package:get/get.dart';

class OrderItem extends GetxController{
  Product product;
  int quantity;

  OrderItem({@required this.product, @required this.quantity});

 }

var allProducts = [].obs ;

