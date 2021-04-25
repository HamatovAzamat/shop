import 'dart:convert';
import 'dart:ffi';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../models/product.dart';

class ProductController extends GetxController{

  static const root = 'http://127.0.0.1:3306/index.php';

  List<String> actions = [
    'GET_ALL',
  ];

  void getAllProducts() async {
    var map = Map<String, dynamic>();
    map['action'] = 'GET_ALL';
    try{
      final response = await http.post(root, body: map);
      print(json.decode(response.body));
    }
    catch(e){
      print(e.toString());
    }
  }

  List<Product> parseResponse(String responseBody){
    final parsed = json.decode(responseBody);
    return parsed;
  }

}