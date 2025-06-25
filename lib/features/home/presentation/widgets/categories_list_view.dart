import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/routing/routes.dart';
import 'package:food_delivery_app/features/home/presentation/widgets/category_item.dart';
import 'package:go_router/go_router.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      scrollDirection: Axis.horizontal,
      clipBehavior: Clip.none,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(right: index == 9 ? 0 : 16),
          child: GestureDetector(
            onTap: () {
              context.push(Routes.foodCategoryDetailsView);
            },
            child: CategoryItem(),
          ),
        );
      },
    );
  }
}
