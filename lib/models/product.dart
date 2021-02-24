import 'package:flutter/foundation.dart';

class Product {
  final String id;
  final int typeId;
  final int subtypeId;
  final String title;
  final String description;
  final double price;
  final String imageUrl;

  Product(
      {@required this.id,
      @required this.typeId,
      @required this.subtypeId,
      @required this.description,
      @required this.imageUrl,
      @required this.price,
      @required this.title}) {}
}
