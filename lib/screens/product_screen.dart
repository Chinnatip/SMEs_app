import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widget/product_item.dart';

class ProductScreen extends StatefulWidget {
  ProductScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final List<Product> loadProducts = [
    Product(
        id: 'DUR001',
        description: 'Yummy Durian',
        price: 400.50,
        imageUrl:
            'https://img.theculturetrip.com/1440x/smart/wp-content/uploads/2019/08/trec00.jpg',
        isFavourite: false),
    Product(
        id: 'DUR002',
        description: 'Yummy Durian',
        price: 360.0,
        imageUrl:
            'https://img.theculturetrip.com/1440x/smart/wp-content/uploads/2019/08/trec00.jpg',
        isFavourite: true),
    Product(
        id: 'DUR003',
        description: 'Yummy Durian',
        price: 333.50,
        imageUrl:
            'https://img.theculturetrip.com/1440x/smart/wp-content/uploads/2019/08/trec00.jpg',
        isFavourite: true),
    Product(
        id: 'DUR004',
        description: 'Yummy Durian',
        price: 400.50,
        imageUrl:
            'https://img.theculturetrip.com/1440x/smart/wp-content/uploads/2019/08/trec00.jpg',
        isFavourite: false),
    Product(
        id: 'DUR005',
        description: 'Yummy Durian',
        price: 400.50,
        imageUrl:
            'https://img.theculturetrip.com/1440x/smart/wp-content/uploads/2019/08/trec00.jpg',
        isFavourite: false),
    Product(
        id: 'DUR006',
        description: 'Yummy Durian',
        price: 400.50,
        imageUrl:
            'https://img.theculturetrip.com/1440x/smart/wp-content/uploads/2019/08/trec00.jpg',
        isFavourite: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: GridView.builder(
            padding: const EdgeInsets.all(4.0),
            itemCount: loadProducts.length,
            itemBuilder: (ctx, i) => GridItem(
                  loadProducts[i].id,
                  loadProducts[i].description,
                  loadProducts[i].price,
                  loadProducts[i].imageUrl,
                ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
              crossAxisCount: 2,
              childAspectRatio: 1.1,
            )));
  }
}
