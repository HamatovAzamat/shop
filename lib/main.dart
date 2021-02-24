import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shop_app/screens/categories_screen.dart';
import './screens/product_overview_screen.dart';
import 'data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Очумелые ручки',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CategoriesScreen(),
    );
  }
}