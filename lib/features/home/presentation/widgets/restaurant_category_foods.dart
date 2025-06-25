import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/extensions/context_extension.dart';
import 'package:food_delivery_app/features/home/presentation/widgets/restaurant_category_food_item.dart';

class RestaurantCategoryFoods extends StatelessWidget {
  const RestaurantCategoryFoods({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate((context, index) {
        return RestaurantCategoryFoodItem();
      }, childCount: 6),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        mainAxisExtent: context.height * 0.25,
      ),
    );
  }
}
