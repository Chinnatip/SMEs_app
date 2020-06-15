import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  final String id;
  final String description;
  final int quantity;
  final double price;

  CartItem(
    this.id,
    this.description,
    this.price,
    this.quantity,
  );

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 4,
      ),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: ListTile(
          leading: CircleAvatar(
            child: Padding(
              padding: EdgeInsets.all(6),
              child: FittedBox(
                child: Text("\฿$price"),
              ),
            ),
          ),
          title: Text(description),
          subtitle: Text("\฿${price * quantity}"),
          trailing: Text("$quantity x"),
        ),
      ),
    );
  }
}
