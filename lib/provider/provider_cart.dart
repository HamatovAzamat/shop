import 'package:flutter/cupertino.dart';
import '../models/cart.dart';

class providerCart with ChangeNotifier {
  Map<String, Cart> _items;

  Map<String, Cart> get items {
    return {..._items};
  }

  void add(String productId, double price, String title) {
    if (_items.containsKey(productId)) {
    } else {
      _items.putIfAbsent(
        productId,
        () => Cart(id: DateTime.now().toString(), title: title, price: price,
        ),
      );
    }
  }
}
