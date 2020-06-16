import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart.dart' show Cart;
import '../providers/orders.dart';
import '../widget/cart_item.dart';

class CartScreen extends StatefulWidget {
  static const routeName = '/cart';

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('Your Cart'),
        ),
        body: Column(
          children: <Widget>[
            Card(
              margin: EdgeInsets.all(15.0),
              child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Total',
                        style: TextStyle(fontSize: 20),
                      ),
                      Spacer(),
                      Chip(
                        label: Text(
                          '\฿${cart.getTotalAmount().toStringAsFixed(2)}',
                          style: TextStyle(color: Colors.white),
                        ),
                        backgroundColor: Theme.of(context).primaryColor,
                      ),
                      FlatButton(
                        child: Text('ORDER NOW'),
                        textColor: Theme.of(context).primaryColor,
                        onPressed: () {
                          // Add orders
                          Provider.of<Orders>(context, listen: false).addOrder(
                            cart.items.values.toList(),
                            cart.getTotalAmount(),
                          );
                          // Clear cart
                          cart.clear();
                        },
                      )
                    ],
                  )),
            ),
            SizedBox(height: 5),
            Expanded(
              child: ListView.builder(
                itemBuilder: (ctx, i) => CartItem(
                  cart.items.values.toList()[i].id,
                  cart.items.keys.toList()[i],
                  cart.items.values.toList()[i].description,
                  cart.items.values.toList()[i].price,
                  cart.items.values.toList()[i].quantity,
                ),
                itemCount: cart.items.length,
              ),
            ),
          ],
        ));
  }
}
