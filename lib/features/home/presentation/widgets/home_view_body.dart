import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/widgets/custom_search_text_field.dart';
import 'package:food_delivery_app/features/home/presentation/widgets/all_categories_widget.dart';
import 'package:food_delivery_app/features/home/presentation/widgets/home_view_app_bar.dart';
import 'package:food_delivery_app/features/home/presentation/widgets/open_restaurants_widget.dart';
import 'package:food_delivery_app/features/home/presentation/widgets/user_welcome_back_widget.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: HomeViewAppBar()),
          SliverToBoxAdapter(child: SizedBox(height: 20)),
          SliverToBoxAdapter(
            child: Align(
              alignment: Alignment.centerLeft,
              child: UserWelcomeBackWidget(),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 20)),
          SliverToBoxAdapter(
            child: CustomSearchTextField(
              hintText: AppStrings.searchDishes,
              controller: TextEditingController(),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 32)),
          SliverToBoxAdapter(child: AllCategoriesWidget()),
          SliverToBoxAdapter(child: SizedBox(height: 32)),
          SliverToBoxAdapter(child: OpenRestaurantsWidget()),
        ],
      ),
    );
  }
}
