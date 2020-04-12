import 'package:flutter/material.dart';
import 'package:flutter_basics/providers/auth.dart';
import 'package:flutter_basics/providers/cart.dart';
import 'package:flutter_basics/providers/orders.dart';
import 'package:flutter_basics/providers/products.dart';
import 'package:flutter_basics/screens/auth_screen.dart';
import 'package:flutter_basics/screens/cart_screen.dart';
import 'package:flutter_basics/screens/edit_product_screen.dart';
import 'package:flutter_basics/screens/orders_screen.dart';
import 'package:flutter_basics/screens/product_details_screen.dart';
import 'package:flutter_basics/screens/user_products_screen.dart';
import 'package:provider/provider.dart';

import './screens/products_overview_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Products(),
        ),
        ChangeNotifierProvider.value(
          value: Cart(),
        ),
        ChangeNotifierProvider.value(
            value: Orders()
        ),
        ChangeNotifierProvider.value(
            value: Auth()
        )
      ],
      child: MaterialApp(
        title: 'My Shop',
        theme: ThemeData(
            primarySwatch: Colors.purple,
            accentColor: Colors.deepOrange,
            fontFamily: 'Lato'),
        home: AuthScreen(),
        routes: {
          ProductDetailsScreen.routeName: (ctx) => ProductDetailsScreen(),
          CartScreen.routeName: (ctx) => CartScreen(),
          OrdersScreen.routeName: (ctx) => OrdersScreen(),
          UserProductsScreen.routeName: (ctx) => UserProductsScreen(),
          EditProductScreen.routeName: (ctx) => EditProductScreen(),
        },
      ),
    );
  }
}
