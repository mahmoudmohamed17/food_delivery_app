import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/features/home/presentation/widgets/category_details_view_app_bar.dart';
import 'package:food_delivery_app/features/home/presentation/widgets/food_items_grid.dart';
import 'package:food_delivery_app/features/home/presentation/widgets/restaurants_list.dart';

class CategoryDetailsViewBody extends StatelessWidget {
  const CategoryDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: CategoryDetailsViewAppBar()),
          SliverToBoxAdapter(child: SizedBox(height: 24)),
          SliverToBoxAdapter(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                AppStrings.popularBurgers,
                style: AppTextStyle.regular20.copyWith(
                  color: AppColors.primaryTextColor,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 24)),
          FoodItemsGrid(),
          SliverToBoxAdapter(child: SizedBox(height: 24)),
          SliverToBoxAdapter(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                AppStrings.openRestaurants,
                style: AppTextStyle.regular20.copyWith(
                  color: AppColors.primaryTextColor,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 16)),
          SliverToBoxAdapter(child: RestaurantsList()),
        ],
      ),
    );
  }
}
