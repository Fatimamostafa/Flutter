import 'package:flutter/material.dart';
import 'package:flutter_basics/providers/cart.dart';
import 'package:flutter_basics/providers/products.dart';
import 'package:flutter_basics/screens/cart_screen.dart';
import 'package:flutter_basics/widgets/app_drawer.dart';
import 'package:flutter_basics/widgets/badge.dart';
import 'package:provider/provider.dart';

import '../widgets/products_grid.dart';

enum FilterOptions { Favorites, All }

class ProductsOverviewScreen extends StatefulWidget {
  @override
  _ProductsOverviewScreenState createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
  bool _showOnlyFavs = false;
  bool _isInit = true;
  bool _isLoading = false;

  @override
  void initState() {
    //This will throw error as the context isn't built yet
    //Provider.of<Products>(context).fetchAndSetProducts();

    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (_isInit) {
      setState(() {
        _isLoading = true;
      });
      Provider.of<Products>(context).fetchAndSetProducts().then((_) {
        setState(() {
          _isLoading = false;
        });
      });
    }
    _isInit = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('MyShop'),
          actions: <Widget>[
            PopupMenuButton(
              onSelected: (FilterOptions selectedValue) {
                setState(() {
                  if (selectedValue == FilterOptions.Favorites) {
                    _showOnlyFavs = true;
                  } else {
                    _showOnlyFavs = false;
                  }
                });
              },
              icon: Icon(
                Icons.more_vert,
              ),
              itemBuilder: (_) => [
                PopupMenuItem(
                    child: Text('Only Favorites'),
                    value: FilterOptions.Favorites),
                PopupMenuItem(child: Text('Show All'), value: FilterOptions.All)
              ],
            ),
            Consumer<Cart>(
              builder: (_, cart, child) => Badge(
                child: child, //IconButton static (doesn't rebuild)
                value: cart.itemCount.toString(),
              ),
              child: IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  Navigator.of(context).pushNamed(CartScreen.routeName);
                },
              ),
            )
          ],
        ),
        drawer: AppDrawer(),
        body: _isLoading
            ? Center(child: CircularProgressIndicator())
            : ProductGrid(_showOnlyFavs));
  }
}
