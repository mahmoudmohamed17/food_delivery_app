import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';

class RatingFilterButton extends StatelessWidget {
  const RatingFilterButton({super.key, required this.isTapped});
  final bool isTapped;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        color: Colors.white,
        border: BoxBorder.all(color: AppColors.subTextColor),
        shape: BoxShape.circle,
      ),
      height: 40,
      width: 40,
      alignment: Alignment.center,
      child: Icon(
        Icons.star,
        color: isTapped
            ? AppColors.primaryColor
            : AppColors.extraLightPrimaryColor,
      ),
    );
  }
}
