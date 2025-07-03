import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/features/home/data/models/restaurant_info_item_model.dart';

class RestaurantInfoItem extends StatelessWidget {
  const RestaurantInfoItem({super.key, required this.model});

  final RestaurantInfoItemModel model;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: 8,
      children: [
        SvgPicture.asset(model.icon),
        Text(model.text, style: model.textStyle),
      ],
    );
  }
}
