import 'package:flutter/material.dart';

class RestaurantInfoItemModel {
  final String icon;
  final String text;
  final TextStyle? textStyle;

  RestaurantInfoItemModel({
    required this.icon,
    required this.text,
    this.textStyle,
  });
}
