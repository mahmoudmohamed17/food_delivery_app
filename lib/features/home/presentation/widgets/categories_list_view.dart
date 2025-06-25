import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/routing/routes.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/features/home/data/models/category_item_model.dart';
import 'package:food_delivery_app/features/home/presentation/widgets/category_item.dart';
import 'package:go_router/go_router.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      CategoryItemModel(
        title: AppStrings.pizza,
        image: Assets.imagesPizza,
        startingPrice: 75,
      ),
      CategoryItemModel(
        title: AppStrings.burger,
        image: Assets.imagesBurger,
        startingPrice: 75,
      ),
      CategoryItemModel(
        title: AppStrings.pasta,
        image: Assets.imagesPasta,
        startingPrice: 75,
      ),
      CategoryItemModel(
        title: AppStrings.hotDog,
        image: Assets.imagesHotDog,
        startingPrice: 75,
      ),
    ];

    return ListView.builder(
      itemCount: items.length,
      scrollDirection: Axis.horizontal,
      clipBehavior: Clip.none,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(right: index == items.length - 1 ? 0 : 16),
          child: GestureDetector(
            onTap: () {
              context.push(Routes.foodCategoryDetailsView);
            },
            child: CategoryItem(model: items[index]),
          ),
        );
      },
    );
  }
}
