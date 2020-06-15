import 'package:flutter/material.dart';
import '../dataLoader/product.dart';
import './product.dart';

class Products with ChangeNotifier {
  List<Product> _items = loadProducts;

  List<Product> get items {
    return [..._items];
  }

  List<Product> get favouriteItems {
    return _items.where((element) => element.isFavourite).toList();
  }

  Product findByID(String id) {
    return _items.firstWhere((element) => element.id == id);
  }

  void addProduct() {
    // _items.add(value);
    notifyListeners();
  }
}
