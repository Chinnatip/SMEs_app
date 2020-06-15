import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './product_item.dart';
import '../providers/products.dart';

class ProductGrid extends StatelessWidget {
  // const ProductGrid({Key key, @required this.loadProducts}) : super(key: key);

  // final List<Product> loadProducts;

  @override
  Widget build(BuildContext context) {
    final productDatas = Provider.of<Products>(context);
    final products = productDatas.items;
    return GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: products.length,
        itemBuilder: (ctx, i) => GridItem(
            products[i].id,
            products[i].description,
            products[i].price,
            products[i].imageUrl,
            products[i].isFavourite),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          childAspectRatio: 0.8,
        ));
  }
}
