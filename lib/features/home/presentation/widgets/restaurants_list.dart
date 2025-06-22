import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/home/presentation/widgets/restaurant_item.dart';

class RestaurantsList extends StatelessWidget {
  const RestaurantsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(10, (index) {
        return Padding(
          padding: EdgeInsets.only(bottom: index == 9 ? 0 : 16),
          child: RestaurantItem(),
        );
      }),
    );
  }
}