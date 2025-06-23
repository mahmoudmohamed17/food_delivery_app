import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/home/presentation/widgets/restaurant_details_view_header.dart';

class RestaurantDetailsViewBody extends StatelessWidget {
  const RestaurantDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [SliverToBoxAdapter(child: RestaurantDetailsViewHeader())],
    );
  }
}
