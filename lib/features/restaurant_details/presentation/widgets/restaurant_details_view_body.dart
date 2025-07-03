import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/features/restaurant_details/presentation/widgets/food_items_grid.dart';
import 'package:food_delivery_app/features/restaurant_details/presentation/widgets/restaurant_details_view_header.dart';
import 'package:food_delivery_app/features/restaurant_details/presentation/widgets/restaurant_food_category_tabs.dart';
import 'package:food_delivery_app/features/restaurant_details/presentation/widgets/restaurant_info_widget.dart';

class RestaurantDetailsViewBody extends StatelessWidget {
  const RestaurantDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(child: RestaurantDetailsViewHeader()),
        const SliverToBoxAdapter(child: SizedBox(height: 24)),
        const SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          sliver: SliverToBoxAdapter(child: RestaurantInfoWidget()),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 16)),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          sliver: SliverToBoxAdapter(
            child: Text(
              AppStrings.spicyRestaurant,
              style: AppTextStyle.bold20(
                context,
              ).copyWith(color: AppColors.primaryTextColor),
            ),
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 8)),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          sliver: SliverToBoxAdapter(
            child: Text(
              AppStrings.maccenasDescription,
              style: AppTextStyle.regular14(
                context,
              ).copyWith(color: AppColors.subTextColor),
            ),
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 32)),
        const RestaurantFoodCategoryTabs(),
        const SliverToBoxAdapter(child: SizedBox(height: 16)),
        const SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          sliver: FoodItemsGrid(),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 32)),
      ],
    );
  }
}
