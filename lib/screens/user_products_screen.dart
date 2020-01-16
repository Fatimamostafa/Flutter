import 'package:flutter/material.dart';
import 'package:flutter_basics/providers/products.dart';
import 'package:flutter_basics/screens/edit_product_screen.dart';
import 'package:flutter_basics/widgets/app_drawer.dart';
import 'package:flutter_basics/widgets/user_product_item.dart';
import 'package:provider/provider.dart';

class UserProductsScreen extends StatelessWidget {
  static const routeName = '/user-products';
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Text('Your Products'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add), 
            onPressed: () {
              Navigator.of(context).pushNamed(EditProductScreen.routeName);
            },
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: ListView.builder(
          itemCount: productsData.items.length,
            itemBuilder: (_, i) => Column(
              children: <Widget>[
                UserProductItem(productsData.items[i].title, productsData.items[i].imageUrl ),
                Divider(),
              ],
            ),),
      ),
    );
  }
}
