import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/features/home/presentation/widgets/food_items_grid.dart';
import 'package:food_delivery_app/features/home/presentation/widgets/restaurant_details_view_header.dart';
import 'package:food_delivery_app/features/home/presentation/widgets/restaurant_food_categorie_tabs.dart';
import 'package:food_delivery_app/features/home/presentation/widgets/restaurant_info_widget.dart';

class RestaurantDetailsViewBody extends StatelessWidget {
  const RestaurantDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: RestaurantDetailsViewHeader()),
        SliverToBoxAdapter(child: SizedBox(height: 24)),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          sliver: SliverToBoxAdapter(child: RestaurantInfoWidget()),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 16)),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          sliver: SliverToBoxAdapter(
            child: Text(
              AppStrings.spicyRestaurant,
              style: AppTextStyle.bold20(context).copyWith(
                color: AppColors.primaryTextColor,
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 8)),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          sliver: SliverToBoxAdapter(
            child: Text(
              AppStrings.maccenasDescription,
              style: AppTextStyle.regular14(context).copyWith(
                color: AppColors.subTextColor,
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 32)),
        RestaurantFoodCategoriesTabs(),
        SliverToBoxAdapter(child: SizedBox(height: 16)),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          sliver: FoodItemsGrid(),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 32)),
      ],
    );
  }
}
