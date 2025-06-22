import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/core/widgets/custom_search_text_field.dart';
import 'package:food_delivery_app/features/home/presentation/widgets/home_view_app_bar.dart';
import 'package:food_delivery_app/features/home/presentation/widgets/user_welcome_back_widget.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: SafeArea(
        child: Column(
          children: [
            HomeViewAppBar(),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: UserWelcomeBackWidget(),
            ),
            SizedBox(height: 20),
            CustomSearchTextField(
              hintText: AppStrings.searchDishes,
              controller: TextEditingController(),
            ),
          ],
        ),
      ),
    );
  }
}
