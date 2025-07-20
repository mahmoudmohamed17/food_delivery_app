import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/features/restaurant_details/data/models/ingredient_item_model.dart';
import 'package:food_delivery_app/features/food_details/presentation/widgets/ingredient_item.dart';

class FoodIngredientsWidget extends StatelessWidget {
  const FoodIngredientsWidget({super.key});

  get itemBuilder => null;

  @override
  Widget build(BuildContext context) {
    final ingredients = [
      IngredientItemModel(
        label: AppStrings.chicken,
        icon: AppAssets.imagesDonate,
      ),
      IngredientItemModel(
        label: AppStrings.chicken,
        icon: AppAssets.imagesDonate,
      ),
      IngredientItemModel(
        label: AppStrings.chicken,
        icon: AppAssets.imagesDonate,
      ),
      IngredientItemModel(
        label: AppStrings.chicken,
        icon: AppAssets.imagesDonate,
      ),
      IngredientItemModel(
        label: AppStrings.chicken,
        icon: AppAssets.imagesDonate,
      ),
      IngredientItemModel(
        label: AppStrings.chicken,
        icon: AppAssets.imagesDonate,
      ),
      IngredientItemModel(
        label: AppStrings.chicken,
        icon: AppAssets.imagesDonate,
      ),
      IngredientItemModel(
        label: AppStrings.chicken,
        icon: AppAssets.imagesDonate,
      ),
      IngredientItemModel(
        label: AppStrings.chicken,
        icon: AppAssets.imagesDonate,
      ),
    ];
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 20,
      children: [
        Text(
          AppStrings.ingredients,
          style: AppTextStyle.regular14(
            context,
          ).copyWith(color: AppColors.primaryTextColor),
        ),
        GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
            childAspectRatio: 0.55,
            crossAxisSpacing: 8,
          ),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          children: List.generate(ingredients.length, (index) {
            return IngredientItem(model: ingredients[index]);
          }),
        ),
      ],
    );
  }
}
