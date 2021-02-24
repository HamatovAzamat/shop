import 'package:flutter/material.dart';
import 'package:shop_app/data.dart';
import 'package:shop_app/models/type.dart';
import 'package:shop_app/widgets/TypeItem.dart';

class CategoriesScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[400],
        appBar: AppBar(
          centerTitle: true,
          title: Text('Каталог товаров'),
          backgroundColor: Colors.purple,
        ),
        body: GridView.builder(
          itemCount: loadedTypes.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 5 / 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 20.0),
          itemBuilder: (ctx, i) => TypeItem(loadedTypes[i]),
          padding: EdgeInsets.all(15),

        ));
  }
}
