import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CartItem {
  final String id;
  final String description;
  final int quantity;
  final double price;

  CartItem({
    @required this.id,
    @required this.description,
    @required this.price,
    @required this.quantity,
  });
}

class Cart with ChangeNotifier {
  Map<String, CartItem> _items = {};

  Map<String, CartItem> get items {
    return {..._items};
  }

  double getTotalAmount() {
    double total = 0;
    _items.forEach((key, item) {
      total += (item.quantity * item.price);
    });
    return total;
  }

  int get cartCounter {
    return _items.length;
  }

  void addItem(
    String productID,
    String description,
    double price,
  ) {
    if (_items.containsKey(productID)) {
      _items.update(
          productID,
          (existedItem) => CartItem(
                id: existedItem.id,
                description: existedItem.description,
                price: existedItem.price,
                quantity: existedItem.quantity + 1,
              ));
    } else {
      _items.putIfAbsent(
          productID,
          () => CartItem(
                id: DateTime.now().toString(),
                description: description,
                price: price,
                quantity: 1,
              ));
    }
    notifyListeners();
  }
}
