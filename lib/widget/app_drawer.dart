import 'package:flutter/material.dart';
import '../screens/order_screen.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: <Widget>[
        AppBar(
          title: Text('Durian ordering'),
          automaticallyImplyLeading: false,
        ),
        Divider(),
        ListTile(
          leading: Icon(
            Icons.shop,
            color: Theme.of(context).accentColor,
          ),
          title: Text(
            'Shop',
            style: TextStyle(
              color: Theme.of(context).accentColor,
            ),
          ),
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/');
          },
        ),
        Divider(
          color: Theme.of(context).accentColor,
        ),
        ListTile(
          leading: Icon(
            Icons.payment,
            color: Theme.of(context).accentColor,
          ),
          title: Text(
            'Orders',
            style: TextStyle(
              color: Theme.of(context).accentColor,
            ),
          ),
          onTap: () {
            Navigator.of(context).pushReplacementNamed(
              OrderScreen.routeName,
            );
          },
        ),
      ],
    ));
  }
}
