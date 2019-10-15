import 'package:flutter/material.dart';
import 'package:flutter_basics/models/meal.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;

  const FavoritesScreen(this.favoriteMeals);


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Favorites Screen '),
    );
  }
}
