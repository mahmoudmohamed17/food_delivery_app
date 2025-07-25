import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/extensions/context_extension.dart';
import 'package:food_delivery_app/features/home/presentation/widgets/categories_list_view.dart';
import 'package:food_delivery_app/features/home/presentation/widgets/home_section_header.dart';

class AllCategoriesWidget extends StatelessWidget {
  const AllCategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        HomeSectionHeader(title: AppStrings.allCategories, onTap: () {}),
        SizedBox(height: (context.height * 0.22) / 2),
        SizedBox(
          height: context.height * 0.1847,
          child: const CategoriesListView(),
        ),
      ],
    );
  }
}
