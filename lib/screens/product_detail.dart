import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/products.dart';

class ProductDetail extends StatelessWidget {
  // final String title;

  // ProductDetail(this.title);
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productID = ModalRoute.of(context).settings.arguments as String;
    final loadProduct = Provider.of<Products>(
      context,
      listen: false,
    ).findByID(productID);
    return Scaffold(
        appBar: AppBar(title: Text(loadProduct.description)),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 300,
                width: double.infinity,
                child: Image.network(
                  loadProduct.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '\฿${loadProduct.price}',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                child: Text(loadProduct.description,
                    textAlign: TextAlign.center,
                    softWrap: true,
                    style: TextStyle(fontSize: 20, color: Colors.grey[200])),
              ),
            ],
          ),
        ));
  }
}
