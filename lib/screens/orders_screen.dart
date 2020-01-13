import 'package:flutter/material.dart';
import 'package:flutter_basics/providers/orders.dart' show Orders;
import 'package:flutter_basics/widgets/app_drawer.dart';
import 'package:flutter_basics/widgets/order_item.dart';
import 'package:provider/provider.dart';

class OrdersScreen extends StatelessWidget {
  static const routeName = '/orders';

  @override
  Widget build(BuildContext context) {
    final ordersData = Provider.of<Orders>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('My orders'),
      ),
      drawer: AppDrawer(),
      body: ListView.builder(itemCount: ordersData.orders.length,
          itemBuilder: (ctx, i) {
              return OrderItem(ordersData.orders[i]);
          }),
    );
  }
}
