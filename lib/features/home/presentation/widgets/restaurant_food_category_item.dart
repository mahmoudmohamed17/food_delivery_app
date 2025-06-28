import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/features/home/data/models/restaurant_food_category_model.dart';

class RestaurantFoodCategoryItem extends StatelessWidget {
  const RestaurantFoodCategoryItem({
    super.key,
    required this.model,
    required this.isActive,
  });
  final RestaurantFoodCategoryModel model;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      decoration: BoxDecoration(
        color: isActive ? AppColors.primaryColor : Colors.white,
        border: BoxBorder.all(
          color: isActive ? Colors.transparent : AppColors.subTextColor,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(32),
      ),
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 18),
      child: Text(
        model.text,
        style: AppTextStyle.regular16(context).copyWith(
          color: isActive ? Colors.white : AppColors.primaryTextColor,
        ),
      ),
    );
  }
}
