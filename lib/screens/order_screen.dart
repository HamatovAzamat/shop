import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/models/order.dart';
import 'package:shop_app/widgets/bottom_navigation_bar.dart';
import 'package:get/get.dart';

import '../widgets/OrderItem.dart';

class OrderScreen extends StatelessWidget {
  final int bottomCurrentIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Мой заказ',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue[900],
      ),
      body: Container(
        padding: EdgeInsets.all(15.0),
        child: ListView.builder(
          itemCount: allProducts.length,
          itemBuilder: (context,i){
            return OrderWidget(allProducts[i]);
          },
        )
      ),
        bottomNavigationBar: BottomNavigationBarWidget(bottomCurrentIndex),
    );
  }
}
