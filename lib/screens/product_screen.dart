import 'package:flutter/material.dart';
import '../widget/product_grid.dart';

class ProductScreen extends StatefulWidget {
  ProductScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: ProductGrid(),
    );
  }
}
