import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widget/app_drawer.dart';
import '../widget/product_grid.dart';
import '../widget/badge.dart';
import '../providers/cart.dart';
import '../screens/cart_screen.dart';

class ProductScreen extends StatefulWidget {
  ProductScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

enum FilterOptions { Favourites, ShowAll }

class _ProductScreenState extends State<ProductScreen> {
  bool _showOnlyFavourite = false;

  @override
  Widget build(BuildContext context) {
    // final productLists = Provider.of<Products>(context);
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          PopupMenuButton(
            onSelected: (FilterOptions selected) {
              setState(() {
                if (selected == FilterOptions.Favourites) {
                  _showOnlyFavourite = true;
                } else {
                  _showOnlyFavourite = false;
                }
              });
            },
            icon: Icon(Icons.more_vert),
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text('Only favourite'),
                value: FilterOptions.Favourites,
              ),
              PopupMenuItem(
                child: Text('Show all'),
                value: FilterOptions.ShowAll,
              ),
            ],
          ),
          Consumer<Cart>(
            builder: (_, cart, ch) => Badge(
              child: ch,
              value: cart.cartCounter.toString(),
            ),
            child: IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                Navigator.of(context).pushNamed(CartScreen.routeName);
              },
            ),
          ),
        ],
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: ProductGrid(_showOnlyFavourite),
      drawer: AppDrawer(),
    );
  }
}
