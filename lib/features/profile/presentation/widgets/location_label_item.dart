import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';

class LocationLabelItem extends StatelessWidget {
  const LocationLabelItem({super.key, required this.isSelected, required this.label});
  final bool isSelected;
  final String label;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      decoration: BoxDecoration(
        color: isSelected
            ? AppColors.primaryColor
            : AppColors.backgrdContainerColor,
        borderRadius: const BorderRadius.all(Radius.circular(50)),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 24),
      alignment: Alignment.center,
      child: Text(
        label,
        style: AppTextStyle.regular14(context).copyWith(
          color: isSelected ? Colors.white : AppColors.primaryTextColor,
        ),
      ),
    );
  }
}