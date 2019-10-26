import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  const ProductItem(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
      ),
      footer: GridTileBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.favorite_border),
        ),
        trailing: IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: (){},
        ),
        backgroundColor: Colors.black54,
        title: Text(title),
      ),
    );
  }
}
