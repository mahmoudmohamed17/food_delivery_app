import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/extensions/context_extension.dart';
import 'package:food_delivery_app/features/home/presentation/widgets/all_categories_header.dart';
import 'package:food_delivery_app/features/home/presentation/widgets/categories_list_view.dart';

class AllCategoriesWidget extends StatelessWidget {
  const AllCategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AllCategoriesHeader(),
        SizedBox(height: (context.height * 0.2) / 2),
        SizedBox(
          height: context.height * 0.1847 + (context.height * 0.2) / 2,
          child: CategoriesListView(),
        ),
      ],
    );
  }
}

