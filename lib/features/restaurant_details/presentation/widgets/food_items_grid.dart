import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/extensions/context_extension.dart';
import 'package:food_delivery_app/features/restaurant_details/presentation/widgets/food_item.dart';

class FoodItemsGrid extends StatelessWidget {
  const FoodItemsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate((context, index) {
        return const FoodItem();
      }, childCount: 4),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        mainAxisExtent: context.height * 0.25,
      ),
    );
  }
}
