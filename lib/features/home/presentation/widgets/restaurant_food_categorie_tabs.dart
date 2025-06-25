import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/features/home/data/models/restaurant_food_category_model.dart';
import 'package:food_delivery_app/features/home/presentation/widgets/restaurant_food_category_item.dart';

class RestaurantFoodCategoriesTabs extends StatefulWidget {
  const RestaurantFoodCategoriesTabs({super.key});

  @override
  State<RestaurantFoodCategoriesTabs> createState() =>
      _RestaurantFoodCategoriesTabsState();
}

class _RestaurantFoodCategoriesTabsState
    extends State<RestaurantFoodCategoriesTabs>
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
      padding: EdgeInsets.symmetric(horizontal: 24),
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
            indicator: BoxDecoration(color: Colors.transparent),
            overlayColor: WidgetStatePropertyAll(Colors.transparent),
            labelPadding: EdgeInsets.zero,
            indicatorPadding: EdgeInsets.zero,
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
            style: AppTextStyle.regular20.copyWith(
              color: AppColors.primaryTextColor,
            ),
          ),
        ]),
      ),
    );
  }
}
