import 'package:flutter/material.dart';

import '../widgets/categories_item.dart';
import '../dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  static const routeName = '/category-meals';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        padding: EdgeInsets.all(20),
        children: DUMMY_CATEGORIES
            .map(
              (cateData) => CategoriesItem(
                cateData.id,
                cateData.title,
                cateData.color,
              ),
            )
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          mainAxisSpacing: 20,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          maxCrossAxisExtent: 200,
        ),
      ),
    );
  }
}
