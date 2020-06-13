import 'dart:ui';
import 'package:flutter/material.dart';
import '../screens/product_detail.dart';

class GridItem extends StatelessWidget {
  final String id;
  final String description;
  final double price;
  final String imageUrl;
  final bool isFav;

  GridItem(this.id, this.description, this.price, this.imageUrl, this.isFav);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        border: Border.all(width: 1, color: Colors.grey[900]),
        borderRadius: new BorderRadius.all(Radius.circular(12)),
        shape: BoxShape.rectangle,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(11.0),
        child: GridTile(
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => ProductDetail(description),
                ),
              );
            },
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          footer: GridTileBar(
            backgroundColor: Colors.black87,
            leading: IconButton(
              icon: Icon(
                isFav ? Icons.favorite : Icons.favorite_border,
                size: 20,
                color: Theme.of(context).accentColor,
              ),
              onPressed: () {},
            ),
            trailing: IconButton(
              icon: Icon(
                Icons.shopping_cart,
                size: 20,
                color: Theme.of(context).accentColor,
              ),
              onPressed: () {},
            ),
            title: Text(
              description,
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
