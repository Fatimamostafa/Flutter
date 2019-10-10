import 'package:flutter/material.dart';
import 'package:flutter_basics/models/dummy-data.dart';
import 'package:flutter_basics/widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
        padding: EdgeInsets.all(25),
        children: <Widget>[
          ...DUMMY_CATEGORIES
              .map((catData) => CategoryItem(catData.id, catData.title, catData.color))
              .toList()
        ],
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2, //For 200 width 300 height
            mainAxisSpacing: 20,
            crossAxisSpacing: 20),
      );
  }
}
