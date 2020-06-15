import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './product_item.dart';
import '../providers/products.dart';

class ProductGrid extends StatelessWidget {
  final bool showFav;
  ProductGrid(this.showFav);

  @override
  Widget build(BuildContext context) {
    final productDatas = Provider.of<Products>(context);
    final products = showFav ? productDatas.favouriteItems : productDatas.items;
    return GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: products.length,
        itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
              value: products[i],
              child: GridItem(),
            ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          childAspectRatio: 0.8,
        ));
  }
}
