import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/utils/app_colors.dart';
import 'package:food_delivery_app/core/utils/app_text_styles.dart';

class FilterButtonItem extends StatelessWidget {
  const FilterButtonItem({
    super.key,
    required this.label,
    required this.isTapped,
  });
  final String label;
  final bool isTapped;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        color: isTapped ? AppColors.primaryColor : Colors.white,
        border: BoxBorder.all(
          color: isTapped ? Colors.transparent : AppColors.subTextColor,
        ),
        borderRadius: BorderRadius.circular(45),
      ),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
      child: Text(
        label,
        style: AppTextStyle.regular14(
          context,
        ).copyWith(color: isTapped ? Colors.white : AppColors.subTextColor),
      ),
    );
  }
}
