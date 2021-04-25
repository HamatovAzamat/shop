import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../data.dart';
import '../models/type.dart';
import '../widgets/TypeItem.dart';
import '../widgets/bottom_navigation_bar.dart';

class CategoriesScreen extends StatelessWidget {

  final int bottomCurrentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[400],
        appBar: AppBar(
          centerTitle: true,
          title: Text('Каталог товаров'),
          backgroundColor: Colors.blue[900],
        ),
        body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: loadedTypes.length,
          itemBuilder: (ctx, i) {
            return Column(
              children: [
                TypeItem(loadedTypes[i]),
              SizedBox(height: 5),
              ],
            );
            },
          padding: EdgeInsets.all(15),
        ),
        bottomNavigationBar: BottomNavigationBarWidget(bottomCurrentIndex),
    );
  }
}
