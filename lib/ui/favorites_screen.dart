import 'package:flutter/material.dart';
import 'package:flutter_basics/models/meal.dart';
import 'package:flutter_basics/widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;

  const FavoritesScreen(this.favoriteMeals);


  @override
  Widget build(BuildContext context) {
    if(favoriteMeals.isEmpty) {
      return Center(
        child: Text('Favorites Screen '),
      );
    }
    else {
      return ListView.builder(itemBuilder: (ctx, index) {
        return MealItem(
          id: favoriteMeals[index].id,
          title: favoriteMeals[index].title,
          imageUrl: favoriteMeals[index].imageUrl,
          duration: favoriteMeals[index].duration,
          complexity: favoriteMeals[index].complexity,
          affordability: favoriteMeals[index].affordability,
        );
      }, itemCount: favoriteMeals.length,);
    }

  }
}
