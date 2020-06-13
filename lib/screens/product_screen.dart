import 'package:flutter/material.dart';
import '../widget/product_item.dart';
import '../dataLoader/product.dart';

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
        body: GridView.builder(
            padding: const EdgeInsets.all(10.0),
            itemCount: loadProducts.length,
            itemBuilder: (ctx, i) => GridItem(
                loadProducts[i].id,
                loadProducts[i].description,
                loadProducts[i].price,
                loadProducts[i].imageUrl,
                loadProducts[i].isFavourite),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              crossAxisCount: 2,
              childAspectRatio: 0.8,
            )));
  }
}
