import 'package:flutter/material.dart';
import 'package:flutter_basics/providers/orders.dart' show Orders;
import 'package:flutter_basics/widgets/app_drawer.dart';
import 'package:flutter_basics/widgets/order_item.dart';
import 'package:provider/provider.dart';

class OrdersScreen extends StatelessWidget {
  static const routeName = '/orders';

  @override
  Widget build(BuildContext context) {
   // final ordersData = Provider.of<Orders>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('My orders'),
      ),
      drawer: AppDrawer(),
      body: FutureBuilder(
        future: Provider.of<Orders>(context, listen: false).fetchAndSetOrders(),
        builder: (ctx, dataSnapshot) {
          if (dataSnapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else {
            if (dataSnapshot.error != null) {
              return Center(
                child: Text('Error'),
              );
            } else {
              return Consumer<Orders>(builder: (ctx, ordersData, child) {
               return ListView.builder(
                    itemCount: ordersData.orders.length,
                    itemBuilder: (ctx, i) {
                      return OrderItem(ordersData.orders[i]);
                    });
              },);
            }
          }
        },
      ),
    );
  }
}
