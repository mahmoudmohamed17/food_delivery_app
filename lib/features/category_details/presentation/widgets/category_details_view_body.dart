import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/features/category_details/presentation/widgets/category_details_view_app_bar.dart';
import 'package:food_delivery_app/features/restaurant_details/presentation/widgets/food_items_grid.dart';
import 'package:food_delivery_app/features/home/presentation/widgets/restaurants_list.dart';

class CategoryDetailsViewBody extends StatelessWidget {
  const CategoryDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: CategoryDetailsViewAppBar()),
          const SliverToBoxAdapter(child: SizedBox(height: 24)),
          SliverToBoxAdapter(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                AppStrings.popularBurgers,
                style: AppTextStyle.regular20(
                  context,
                ).copyWith(color: AppColors.primaryTextColor),
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 24)),
          const FoodItemsGrid(),
          const SliverToBoxAdapter(child: SizedBox(height: 24)),
          SliverToBoxAdapter(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                AppStrings.openRestaurants,
                style: AppTextStyle.regular20(
                  context,
                ).copyWith(color: AppColors.primaryTextColor),
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
          const SliverToBoxAdapter(child: RestaurantsList()),
        ],
      ),
    );
  }
}
