import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/features/home/data/models/restaurant_food_category_model.dart';
import 'package:food_delivery_app/features/restaurant_details/presentation/widgets/restaurant_food_category_item.dart';

class RestaurantFoodCategoriesList extends StatefulWidget {
  const RestaurantFoodCategoriesList({super.key});

  @override
  State<RestaurantFoodCategoriesList> createState() =>
      _RestaurantFoodCategoriesListState();
}

class _RestaurantFoodCategoriesListState
    extends State<RestaurantFoodCategoriesList> {
  int _activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    final items = [
      RestaurantFoodCategoryModel(text: AppStrings.burger, onTap: () {}),
      RestaurantFoodCategoryModel(text: AppStrings.sandwich, onTap: () {}),
      RestaurantFoodCategoryModel(text: AppStrings.pizza, onTap: () {}),
      RestaurantFoodCategoryModel(text: AppStrings.chicken, onTap: () {}),
      RestaurantFoodCategoryModel(text: AppStrings.salad, onTap: () {}),
      RestaurantFoodCategoryModel(text: AppStrings.pasta, onTap: () {}),
      RestaurantFoodCategoryModel(text: AppStrings.drinks, onTap: () {}),
    ];
    return SizedBox(
      height: 50,
      child: ListView.builder(
        itemCount: items.length,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              items[index].onTap.call();
              setState(() {
                _activeIndex = index;
              });
            },
            child: Padding(
              padding: EdgeInsets.only(
                right: index == items.length - 1 ? 0 : 8,
              ),
              child: RestaurantFoodCategoryItem(
                model: items[index],
                isActive: _activeIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
