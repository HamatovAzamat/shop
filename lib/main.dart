import 'package:flutter/material.dart';
import './screens/home_page.dart';
import 'package:get/get.dart';

import './screens/categories_screen.dart';
import './screens/home_page.dart';
import './screens/product_overview_screen.dart';
import 'data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Очумелые ручки',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}