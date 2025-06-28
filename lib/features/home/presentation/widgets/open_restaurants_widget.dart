import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/constants/app_strings.dart';
import 'package:food_delivery_app/features/home/presentation/widgets/restaurants_list.dart';
import 'package:food_delivery_app/features/home/presentation/widgets/section_header.dart';

class OpenRestaurantsWidget extends StatelessWidget {
  const OpenRestaurantsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionHeader(title: AppStrings.openRestaurants, onTap: () {}),
        const SizedBox(height: 20),
        const RestaurantsList(),
      ],
    );
  }
}
