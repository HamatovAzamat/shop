import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/screens/order_screen.dart';
import '../screens/home_page.dart';
import '../screens/categories_screen.dart';
import '../screens/product_overview_screen.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  int _initialItem = 0;
  BottomNavigationBarWidget(this._initialItem);

  void _onItemTapped(int selectedIndex){

    if (selectedIndex == 0){
      Get.to(HomePage());
    }
    if (selectedIndex == 1){
      Get.to(CategoriesScreen());
    }
    if (selectedIndex == 2){
      Get.to(OrderScreen());
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.assignment_outlined),
          label: 'Catalog',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.backup_table_outlined),
          label: 'My Order',
        ),
      ],
      currentIndex: _initialItem,
      onTap: _onItemTapped,
    );
  }
}
