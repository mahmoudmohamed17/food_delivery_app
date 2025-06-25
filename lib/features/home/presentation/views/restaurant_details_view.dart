import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/home/presentation/widgets/restaurant_details_view_body.dart';

class RestaurantDetailsView extends StatelessWidget {
  const RestaurantDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: RestaurantDetailsViewBody());
  }
}
