import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/utils/app_assets.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';
import 'package:food_delivery_app/core/widgets/custom_arrow_back_widget.dart';
import 'package:food_delivery_app/features/home/presentation/widgets/food_category_details_view_app_bar.dart';
import 'package:go_router/go_router.dart';

class FoodCategoryDetailsViewBody extends StatelessWidget {
  const FoodCategoryDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: SafeArea(
        child: CustomScrollView(
          slivers: [SliverToBoxAdapter(child: FoodCategoryDetailsViewAppBar())],
        ),
      ),
    );
  }
}
