import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/products.dart';

class ProductDetail extends StatelessWidget {
  // final String title;

  // ProductDetail(this.title);
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productID = ModalRoute.of(context).settings.arguments as String;
    final loadProduct = Provider.of<Products>(
      context,
      listen: false,
    ).findByID(productID);
    return Scaffold(
      appBar: AppBar(title: Text(loadProduct.description)),
    );
  }
}