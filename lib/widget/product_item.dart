import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../screens/product_detail.dart';
import '../providers/product.dart';

class GridItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final product = Provider.of<Product>(context);
    return Container(
      decoration: new BoxDecoration(
        border: Border.all(width: 1, color: Colors.grey[900]),
        borderRadius: new BorderRadius.all(Radius.circular(12)),
        shape: BoxShape.rectangle,
      ),
      child: Consumer<Product>(
        builder: (ctx, product, _) => ClipRRect(
          borderRadius: BorderRadius.circular(11.0),
          child: GridTile(
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(
                  ProductDetail.routeName,
                  arguments: product.id,
                );
              },
              child: Image.network(
                product.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            footer: GridTileBar(
              backgroundColor: Colors.black87,
              leading: IconButton(
                icon: Icon(
                  product.isFavourite ? Icons.favorite : Icons.favorite_border,
                  size: 20,
                  color: Theme.of(context).accentColor,
                ),
                onPressed: () {
                  product.toggleFavourite();
                },
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
                product.description,
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
