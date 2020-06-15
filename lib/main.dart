import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/product_screen.dart';
import './screens/product_detail.dart';
import './providers/products.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Products(),
      child: MaterialApp(
        title: 'DurianX',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.teal[600],
          canvasColor: Colors.grey[800],
          accentColor: Colors.yellow[600],
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: ProductScreen(title: 'DURIAN - SMEs'),
        routes: {
          ProductDetail.routeName: (ctx) => ProductDetail(),
        },
      ),
    );
  }
}
