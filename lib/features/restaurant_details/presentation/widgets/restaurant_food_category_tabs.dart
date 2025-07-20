import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/features/restaurant_details/data/models/restaurant_food_category_model.dart';
import 'package:food_delivery_app/features/restaurant_details/presentation/widgets/restaurant_food_category_item.dart';

class RestaurantFoodCategoryTabs extends StatefulWidget {
  const RestaurantFoodCategoryTabs({super.key});

  @override
  State<RestaurantFoodCategoryTabs> createState() =>
      _RestaurantFoodCategoryTabsState();
}

class _RestaurantFoodCategoryTabsState
    extends State<RestaurantFoodCategoryTabs>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final items = [
    RestaurantFoodCategoryModel(text: AppStrings.burger, onTap: () {}),
    RestaurantFoodCategoryModel(text: AppStrings.sandwich, onTap: () {}),
    RestaurantFoodCategoryModel(text: AppStrings.pizza, onTap: () {}),
    RestaurantFoodCategoryModel(text: AppStrings.chicken, onTap: () {}),
    RestaurantFoodCategoryModel(text: AppStrings.salad, onTap: () {}),
    RestaurantFoodCategoryModel(text: AppStrings.pasta, onTap: () {}),
    RestaurantFoodCategoryModel(text: AppStrings.drinks, onTap: () {}),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: items.length, vsync: this)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      sliver: SliverList(
        delegate: SliverChildListDelegate([
          // Tab Bar
          TabBar(
            isScrollable: true,
            controller: _tabController,
            onTap: (index) {
              items[index].onTap.call();
            },
            indicatorWeight: 0.0,
            dividerHeight: 0.0,
            indicator: const BoxDecoration(color: Colors.transparent),
            overlayColor: const WidgetStatePropertyAll(Colors.transparent),
            labelPadding: EdgeInsets.zero,
            tabAlignment: TabAlignment.start,
            tabs: List.generate(items.length, (index) {
              return Padding(
                padding: EdgeInsets.only(
                  right: index == items.length - 1 ? 0 : 8,
                ),
                child: RestaurantFoodCategoryItem(
                  model: items[index],
                  isActive: _tabController.index == index,
                ),
              );
            }),
          ),
          const SizedBox(height: 16),
          Text(
            items[_tabController.index].text,
            style: AppTextStyle.regular20(
              context,
            ).copyWith(color: AppColors.primaryTextColor),
          ),
        ]),
      ),
    );
  }
}
