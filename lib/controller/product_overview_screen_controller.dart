import '../models/product.dart';
import 'package:flutter/material.dart';

int itemCount(List<Product> products, int requiredType){
  if (requiredType == 0){
    return products.length;
  }
  else{
    int rez;
    for (int i = 0; i < products.length; i++){
      debugPrint(products[i].typeId.toString() + ' ' + requiredType.toString() + ' ' + i.toString());
      if (products[i].typeId == requiredType){
        rez = rez + 1;
      }
    }
    return rez;
  }

}