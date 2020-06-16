import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/orders.dart' show Orders;
import '../widget/order_item.dart';
import '../widget/app_drawer.dart';

class OrderScreen extends StatelessWidget {
  static const routeName = '/order';

  @override
  Widget build(BuildContext context) {
    final orderDatas = Provider.of<Orders>(context);
    return Scaffold(
      appBar: AppBar(title: Text('Your Orders')),
      drawer: AppDrawer(),
      body: ListView.builder(
        itemCount: orderDatas.orders.length,
        itemBuilder: (ctx, i) => OrderItem(orderDatas.orders[i]),
      ),
    );
  }
}
