import 'dart:ui';
import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  final String id;
  final String description;
  final double price;
  final String imageUrl;
  GridItem(this.id, this.description, this.price, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
      ),
      footer: GridTileBar(
        backgroundColor: Colors.black54,
        leading: IconButton(
          icon: Icon(Icons.favorite),
          onPressed: () {},
        ),
        trailing: IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {},
        ),
        title: Text(
          description,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
