import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
/*  final String title;
  ProductDetailsScreen(this.title);*/

static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final String productId = ModalRoute.of(context).settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
    );
  }
}
