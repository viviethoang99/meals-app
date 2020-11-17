import 'package:flutter/material.dart';

import '../widgets/meal_item.dart';
import '../models/meal.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoritesMeal;

  FavoritesScreen(this.favoritesMeal);

  @override
  Widget build(BuildContext context) {
    if(favoritesMeal.isEmpty) {
      return Center(
        child: Text('You have no favorites yet - start adding some!'),
      );
    }
    else{
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favoritesMeal[index].id,
            title: favoritesMeal[index].title,
            imageURL: favoritesMeal[index].imageUrl,
            affordability: favoritesMeal[index].affordability,
            complexity: favoritesMeal[index].complexity,
            duration: favoritesMeal[index].duration,
          );
        },
        itemCount: favoritesMeal.length,
      );
    }
  }
}
