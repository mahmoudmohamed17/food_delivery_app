import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';

class FoodSizeSelectionItem extends StatelessWidget {
  const FoodSizeSelectionItem({
    super.key,
    required this.size,
    required this.isActive,
  });
  final String size;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 50,
      width: 50,
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive
            ? AppColors.primaryColor
            : AppColors.backgrdContainerColor,
      ),
      padding: const EdgeInsets.all(8),
      alignment: Alignment.center,
      child: Text(
        '$size”',
        style: AppTextStyle.bold16(
          context,
        ).copyWith(color: isActive ? Colors.white : AppColors.primaryTextColor),
      ),
    );
  }
}
