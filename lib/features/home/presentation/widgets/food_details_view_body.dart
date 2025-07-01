import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/features/home/presentation/widgets/food_details_view_header.dart';
import 'package:food_delivery_app/features/home/presentation/widgets/food_ingredients_widget.dart';
import 'package:food_delivery_app/features/home/presentation/widgets/food_size_selection_widget.dart';
import 'package:food_delivery_app/features/home/presentation/widgets/restaurant_info_widget.dart';
import 'package:food_delivery_app/features/home/presentation/widgets/restaurant_logo_and_name_widget.dart';

class FoodDetailsViewBody extends StatelessWidget {
  const FoodDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(child: FoodDetailsViewHeader()),
        const SliverToBoxAdapter(child: SizedBox(height: 24)),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          sliver: SliverToBoxAdapter(
            child: Text(
              AppStrings.burgerBistro,
              style: AppTextStyle.bold20(
                context,
              ).copyWith(color: AppColors.primaryTextColor),
            ),
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 8)),
        const SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          sliver: SliverToBoxAdapter(child: RestaurantLogoAndNameWidget()),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 16)),
        const SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          sliver: SliverToBoxAdapter(child: RestaurantInfoWidget()),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 16)),
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
        const SliverToBoxAdapter(child: SizedBox(height: 24)),
        const SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          sliver: SliverToBoxAdapter(child: FoodSizeSelectionWidget()),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 24)),
        const SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          sliver: SliverToBoxAdapter(child: FoodIngredientsWidget()),
        ),
      ],
    );
  }
}
