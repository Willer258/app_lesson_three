// ignore_for_file: non_constant_identifier_names

import 'package:app_lesson_three/dummy_data.dart';
import 'package:app_lesson_three/widgets/meal_item.dart';
import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {

  static const routeName = '/category-meals';

  const CategoryMealsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final routesArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryTitle = routesArgs['title'] as String;
    final categoryId = routesArgs['id'] as String;
    final CategoryMeals = DUMMY_MEALS
        .where((meal) => meal.categories.contains(categoryId))
        .toList();
    return Scaffold(
      appBar: AppBar(title: Text(categoryTitle)),
      body: ListView.builder(
        itemBuilder: (ctx, index) => MealItem(
            id: CategoryMeals[index].id,
            title: CategoryMeals[index].title,
            imageUrl: CategoryMeals[index].imageUrl,
            duration: CategoryMeals[index].duration,
            complexity: CategoryMeals[index].complexity,
            affordability: CategoryMeals[index].affordability),
        itemCount: CategoryMeals.length,
      ),
    );
  }
}
